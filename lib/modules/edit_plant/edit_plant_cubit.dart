import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'edit_plant_state.dart';

class EditPlantCubit extends Cubit<EditPlantState> {
  EditPlantCubit() : super(EditPlantInitial());
}
