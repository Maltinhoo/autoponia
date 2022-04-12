import 'register_plant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'register_plant_content.dart';

class RegisterPlantPage extends StatelessWidget {
  static String route = '/registerPlant';

  const RegisterPlantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Cadastrar nova Planta'),
            ),
            body: BlocProvider(
                create: (context) => GetIt.I.get<RegisterPlantCubit>(),
                child: RegisterPlantContent(
                  constraints: constraints,
                ))),
      );
    });
  }
}
