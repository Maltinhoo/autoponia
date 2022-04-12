import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'plant_state.dart';

class PlantCubit extends Cubit<PlantState> {
  PlantCubit() : super(PlantInitial());
}
