import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_plant_state.dart';

class RegisterPlantCubit extends Cubit<RegisterPlantState> {
  RegisterPlantCubit() : super(RegisterPlantInitial());
}
