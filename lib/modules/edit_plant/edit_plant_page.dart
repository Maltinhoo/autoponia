import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'edit_plant_content.dart';
import 'edit_plant_cubit.dart';

class EditPlantPage extends StatelessWidget {
  static String route = '/editPlant';

  const EditPlantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Editar Planta'),
            ),
            body: BlocProvider(
                create: (context) => GetIt.I.get<EditPlantCubit>(),
                child: EditPlantContent(
                  constraints: constraints,
                ))),
      );
    });
  }
}
