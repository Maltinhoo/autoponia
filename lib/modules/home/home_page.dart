import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get_it/get_it.dart';

import '../../shared/components/common_drawer.dart';
import 'home_content.dart';
import 'home_cubit.dart';

class HomePage extends StatelessWidget {
  static String route = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: Center(child: Text('Inicio')),
            //   actions: [
            //     IconButton(
            //       icon: Icon(Icons.add),
            //       onPressed: () {
            //         customAlert(
            //           context: context,
            //           constraints: constraints,
            //           title: 'O que deseja criar?',
            //           function: () {
            //             Navigator.pushNamed(context, RegisterPlantPage.route);
            //           },
            //           secondFunction: () {
            //             Navigator.pushNamed(
            //                 context, RegisterSettingsPage.route);
            //           },
            //           text1: 'Nova Planta',
            //           text2: 'Configuração',
            //         );
            //       },
            //     )
            //   ],
            //   leading: IconButton(
            //     icon: Icon(Icons.arrow_back),
            //     onPressed: () {
            //       customAlert(
            //           context: context,
            //           constraints: constraints,
            //           title: 'Deseja sair?',
            //           function: () {
            //             Navigator.pushReplacementNamed(
            //                 context, LoginPage.route);
            //           },
            //           secondFunction: () {
            //             Navigator.pop(context);
            //           },
            //           text1: 'Sim',
            //           text2: 'Não');
            //     },
            //   ),
            // ),
            body: SliderDrawer(
          appBar: SliderAppBar(
              appBarColor: Colors.green,
              title: Text('Inicio',
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700))),
          slider: CommonDrawer(
            constraints: constraints,
          ),
          child: BlocProvider(
              create: (context) => GetIt.I.get<HomeCubit>(),
              child: HomeContent(
                constraints: constraints,
              )),
        )),
      );
    });
  }
}
