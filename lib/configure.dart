import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/user_repository.dart';
import 'environment.dart';
import 'modules/edit_plant/edit_plant_cubit.dart';
import 'modules/edit_settings/edit_settings_cubit.dart';
import 'modules/home/home_cubit.dart';
import 'modules/login/login_cubit.dart';
import 'modules/plant/plant_cubit.dart';
import 'modules/register_plant/register_plant_cubit.dart';
import 'modules/register_settings/register_settings_cubit.dart';
import 'modules/watering_settings/watering_settings_cubit.dart';
import 'modules/wrapper/wrapper_cubit.dart';
import 'shared/services/user_service.dart';

Future<void> configure() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  GetIt.I.registerSingleton<BaseCacheManager>(DefaultCacheManager());

  GetIt.I
      .registerFactory<Dio>(() => Dio(BaseOptions(baseUrl: Environment.api)));

  GetIt.I.registerSingleton<UserService>(
      UserService(preferences: sharedPreferences));

  GetIt.I.registerSingleton<WrapperCubit>(WrapperCubit(
    userService: GetIt.I.get<UserService>(),
  ));

  GetIt.I.registerSingleton<LoginCubit>(LoginCubit(
    userService: GetIt.I.get<UserService>(),
    userRepository: UserRepository(dio: GetIt.I.get<Dio>()),
  ));

  GetIt.I.registerSingleton<HomeCubit>(HomeCubit(
    userService: GetIt.I.get<UserService>(),
  ));

  GetIt.I.registerSingleton<RegisterPlantCubit>(RegisterPlantCubit());

  GetIt.I.registerSingleton<PlantCubit>(PlantCubit());

  GetIt.I.registerSingleton<RegisterSettingsCubit>(RegisterSettingsCubit());

  GetIt.I.registerFactory<WateringSettingsCubit>(() => WateringSettingsCubit());

  GetIt.I.registerFactory<EditSettingsCubit>(() => EditSettingsCubit());

  GetIt.I.registerFactory<EditPlantCubit>(() => EditPlantCubit());
}
