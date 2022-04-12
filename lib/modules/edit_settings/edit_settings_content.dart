import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/common_button.dart';
import '../../shared/components/common_field.dart';
import 'edit_settings_cubit.dart';

class EditSettingsContent extends StatelessWidget {
  final controller = TextEditingController();
  final BoxConstraints constraints;

  EditSettingsContent({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditSettingsCubit, EditSettingsState>(
      listener: (context, state) {},
      child: BlocBuilder<EditSettingsCubit, EditSettingsState>(
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
                          text: 'Salvar',
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
