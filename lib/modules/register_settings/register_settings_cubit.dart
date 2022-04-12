import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_settings_state.dart';

class RegisterSettingsCubit extends Cubit<RegisterSettingsState> {
  RegisterSettingsCubit() : super(RegisterSettingsInitial());
}
