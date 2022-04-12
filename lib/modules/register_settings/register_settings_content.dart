import 'package:boilerplate_flutter/modules/register_plant/register_plant_cubit.dart';
import 'package:boilerplate_flutter/modules/register_settings/register_settings_cubit.dart';
import 'package:boilerplate_flutter/shared/components/common_button.dart';
import 'package:boilerplate_flutter/shared/components/common_field.dart';
import 'package:boilerplate_flutter/shared/components/plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login/login_page.dart';

class RegisterSettingsContent extends StatelessWidget {
  final controller = TextEditingController();
  final BoxConstraints constraints;

  RegisterSettingsContent({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterSettingsCubit, RegisterSettingsState>(
      listener: (context, state) {},
      child: BlocBuilder<RegisterSettingsCubit, RegisterSettingsState>(
          builder: (context, state) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: [
                        CommonField(
                          label: 'Nome da configuração',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonField(
                          label: 'Funcionalidades',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonField(
                          label: 'Tempo de execução',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonButton(
                          text: 'CADASTRAR',
                          constraints: constraints,
                          function: () {},
                          color: Colors.green,
                        ),
                      ]),
                    ),
                  ),
                ),
              )),
    );
  }
}
