import 'package:boilerplate_flutter/modules/register_plant/register_plant_cubit.dart';
import 'package:boilerplate_flutter/shared/components/common_button.dart';
import 'package:boilerplate_flutter/shared/components/common_field.dart';
import 'package:boilerplate_flutter/shared/components/plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login/login_page.dart';

class RegisterPlantContent extends StatelessWidget {
  final controller = TextEditingController();
  final BoxConstraints constraints;

  RegisterPlantContent({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterPlantCubit, RegisterPlantState>(
      listener: (context, state) {},
      child: BlocBuilder<RegisterPlantCubit, RegisterPlantState>(
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
                          label: 'Nome da Planta',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonField(
                          label: 'Tipo de Planta',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonField(
                          label: 'Descrição da Planta',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonField(
                          label: 'Data de Plantio',
                          controller: controller,
                        ),
                        SizedBox(height: 16),
                        CommonField(
                          label: 'Data de Fim de Vida',
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
