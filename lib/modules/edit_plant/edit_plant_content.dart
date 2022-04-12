import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/common_button.dart';
import '../../shared/components/common_field.dart';
import 'edit_plant_cubit.dart';

class EditPlantContent extends StatelessWidget {
  final controller = TextEditingController();
  final BoxConstraints constraints;

  EditPlantContent({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditPlantCubit, EditPlantState>(
      listener: (context, state) {},
      child: BlocBuilder<EditPlantCubit, EditPlantState>(
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
