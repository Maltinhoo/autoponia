import 'package:flutter/material.dart';

import '../../modules/login/login_page.dart';
import '../../modules/watering_settings/watering_settings_page.dart';
import 'custom_alert.dart';
import 'options_drawer.dart';

class CommonDrawer extends StatelessWidget {
  final BoxConstraints constraints;
  CommonDrawer({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
            ),
          ),
          Text(
            'Josué',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'BalsamiqSans'),
          ),
          // OptionsDrawer(
          //   route: () {
          //     Navigator.pushNamed(context, ChatPage.route);
          //   },
          //   label: 'Chat de usuarios',
          //   constraints: constraints,
          // ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  OptionsDrawer(
                      constraints: constraints,
                      label: 'Configurações de regador',
                      function: () {
                        Navigator.pushNamed(
                            context, WateringSettingsPage.route);
                      }),
                  OptionsDrawer(
                    constraints: constraints,
                    label: 'Sair',
                    function: () {
                      customAlert(
                          context: context,
                          constraints: constraints,
                          title: 'Deseja sair?',
                          text1: 'Sim',
                          text2: 'Não',
                          function: () {
                            Navigator.pushReplacementNamed(
                                context, LoginPage.route);
                          },
                          secondFunction: () {
                            Navigator.pop(context);
                          });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
