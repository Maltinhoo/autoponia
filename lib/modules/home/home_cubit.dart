import 'package:bloc/bloc.dart';

import '../../shared/services/user_service.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final UserService userService;

  HomeCubit({
    required this.userService,
  }) : super(HomeState());

  void logout() async {
    emit(HomeState(exiting: true));
    await userService.logout();
    emit(HomeState(exited: true));
  }
}
