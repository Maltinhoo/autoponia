import 'package:boilerplate_flutter/modules/plant/plant_cubit.dart';
import 'package:boilerplate_flutter/modules/register_plant/register_plant_cubit.dart';
import 'package:boilerplate_flutter/shared/components/common_button.dart';
import 'package:boilerplate_flutter/shared/components/common_field.dart';
import 'package:boilerplate_flutter/shared/components/plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login/login_page.dart';

class PlantContent extends StatelessWidget {
  final controller = TextEditingController();
  final BoxConstraints constraints;

  PlantContent({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlantCubit, PlantState>(
        listener: (context, state) {},
        child: BlocBuilder<PlantCubit, PlantState>(
          builder: (context, state) => SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                width: constraints.maxWidth * 1,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Descrição da Planta',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit ex, elementum ut cursus sed, hendrerit eu neque. Suspendisse quis velit in sem venenatis vehicula. Duis sed tortor consequat, ornare purus sit amet, consequat ante. Donec quis nulla sed arcu pretium rutrum ut ac elit. Etiam in ultrices ligula. Maecenas vel arcu ac leo cursus eleifend et ac lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras aliquam rutrum ipsum. Nulla dapibus vestibulum commodo. Suspendisse eget tortor eu eros fringilla eleifend non non orci. Etiam dictum iaculis iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac pellentesque risus.',
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit ex, elementum ut cursus sed, hendrerit eu neque. Suspendisse quis velit in sem venenatis vehicula. Duis sed tortor consequat, ornare purus sit amet, consequat ante. Donec quis nulla sed arcu pretium rutrum ut ac elit. Etiam in ultrices ligula. Maecenas vel arcu ac leo cursus eleifend et ac lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras aliquam rutrum ipsum. Nulla dapibus vestibulum commodo. Suspendisse eget tortor eu eros fringilla eleifend non non orci. Etiam dictum iaculis iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac pellentesque risus.',
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit ex, elementum ut cursus sed, hendrerit eu neque. Suspendisse quis velit in sem venenatis vehicula. Duis sed tortor consequat, ornare purus sit amet, consequat ante. Donec quis nulla sed arcu pretium rutrum ut ac elit. Etiam in ultrices ligula. Maecenas vel arcu ac leo cursus eleifend et ac lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras aliquam rutrum ipsum. Nulla dapibus vestibulum commodo. Suspendisse eget tortor eu eros fringilla eleifend non non orci. Etiam dictum iaculis iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac pellentesque risus.',
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Data de Plantio',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.calendar_today),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'dd/mm/aaaa',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Data de Colheita',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.calendar_today),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'dd/mm/aaaa',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          )),
        ));
  }
}
