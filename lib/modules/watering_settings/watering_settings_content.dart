import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/settings_type.dart';
import 'watering_settings_cubit.dart';

class WateringSettingsContent extends StatelessWidget {
  final controller = TextEditingController();
  final BoxConstraints constraints;

  WateringSettingsContent({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<WateringSettingsCubit, WateringSettingsState>(
      listener: (context, state) {},
      child: BlocBuilder<WateringSettingsCubit, WateringSettingsState>(
          builder: (context, state) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SettingsType(
                          constraints: constraints, label: 'Configuração X'),
                      SizedBox(height: 16),
                      SettingsType(
                          constraints: constraints, label: 'Configuração X'),
                      SizedBox(height: 16),
                      SettingsType(
                          constraints: constraints, label: 'Configuração X'),
                      SizedBox(height: 16),
                      SettingsType(
                          constraints: constraints, label: 'Configuração X'),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              )),
    );
  }
}
