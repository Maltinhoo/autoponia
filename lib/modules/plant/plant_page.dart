import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../shared/components/common_button.dart';
import '../../shared/components/custom_alert.dart';
import '../edit_plant/edit_plant_page.dart';
import '../register_plant/register_plant_page.dart';
import 'plant_content.dart';
import 'plant_cubit.dart';

class PlantPage extends StatelessWidget {
  static String route = '/plant';

  const PlantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          body: BlocProvider(
            create: (context) => GetIt.I.get<PlantCubit>(),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  actions: [
                    IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          customAlert(
                              context: context,
                              constraints: constraints,
                              title: 'Deseja adicionar ou atualizar planta?',
                              text1: 'Adicionar',
                              text2: 'Atualizar',
                              function: () {
                                Navigator.pushReplacementNamed(
                                    context, RegisterPlantPage.route);
                              },
                              secondFunction: () {
                                Navigator.pushReplacementNamed(
                                    context, EditPlantPage.route);
                              });
                        })
                  ],
                  toolbarHeight: constraints.maxHeight * .09,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  pinned: true,
                  floating: false,
                  snap: false,
                  expandedHeight: constraints.maxHeight * .4,
                  backgroundColor: Colors.green,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text('Nome da Planta',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))),
                    background: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset('assets/planta.png'),
                    ),
                  ),
                  leading: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: PlantContent(
                    constraints: constraints,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.green,
            shape: AutomaticNotchedShape(RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)))),
            child: OverflowBar(
              overflowAlignment: OverflowBarAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonButton(
                        text: 'Acionar regador',
                        constraints: constraints,
                        function: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
