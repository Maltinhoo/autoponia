import '../register_plant/register_plant_cubit.dart';
import 'register_settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'register_settings_content.dart';

class RegisterSettingsPage extends StatelessWidget {
  static String route = '/registerSettings';

  const RegisterSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Cadastrar nova Configuração'),
            ),
            body: BlocProvider(
                create: (context) => GetIt.I.get<RegisterSettingsCubit>(),
                child: RegisterSettingsContent(
                  constraints: constraints,
                ))),
      );
    });
  }
}
