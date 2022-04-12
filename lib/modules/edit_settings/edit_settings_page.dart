import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'edit_settings_content.dart';
import 'edit_settings_cubit.dart';

class EditSettingsPage extends StatelessWidget {
  static String route = '/editSettings';

  const EditSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Editar nova Configuração'),
            ),
            body: BlocProvider(
                create: (context) => GetIt.I.get<EditSettingsCubit>(),
                child: EditSettingsContent(
                  constraints: constraints,
                ))),
      );
    });
  }
}
