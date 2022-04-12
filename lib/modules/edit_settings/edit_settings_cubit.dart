import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'edit_settings_state.dart';

class EditSettingsCubit extends Cubit<EditSettingsState> {
  EditSettingsCubit() : super(EditSettingsInitial());
}
