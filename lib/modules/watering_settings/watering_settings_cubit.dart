import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'watering_settings_state.dart';

class WateringSettingsCubit extends Cubit<WateringSettingsState> {
  WateringSettingsCubit() : super(WateringSettingsInitial());
}
