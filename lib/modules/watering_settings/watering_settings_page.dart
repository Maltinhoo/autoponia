import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../shared/components/custom_alert.dart';
import '../edit_settings/edit_settings_page.dart';
import '../register_settings/register_settings_page.dart';
import 'watering_settings_content.dart';
import 'watering_settings_cubit.dart';

class WateringSettingsPage extends StatelessWidget {
  static String route = '/wateringSettings';

  const WateringSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Configurações de regador'),
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    customAlert(
                        context: context,
                        constraints: constraints,
                        title: 'Deseja criar ou editar configuração?',
                        text1: 'Criar',
                        text2: 'Editar',
                        function: () {
                          Navigator.pushReplacementNamed(
                              context, RegisterSettingsPage.route);
                        },
                        secondFunction: () {
                          Navigator.pushReplacementNamed(
                              context, EditSettingsPage.route);
                        });
                  },
                )
              ],
            ),
            body: BlocProvider(
                create: (context) => GetIt.I.get<WateringSettingsCubit>(),
                child: WateringSettingsContent(
                  constraints: constraints,
                ))),
      );
    });
  }
}
