import 'package:flutter/material.dart';

import 'custom_alert.dart';

class SettingsType extends StatelessWidget {
  final BoxConstraints constraints;
  final String label;
  const SettingsType({Key? key, required this.constraints, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: (() => customAlert(
          context: context,
          constraints: constraints,
          title: 'Deseja excluir configuração?',
          text1: 'Sim',
          text2: 'Não',
          function: () {
            Navigator.pop(context);
          },
          secondFunction: () {
            Navigator.pop(context);
          })),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: constraints.maxWidth * 1,
        child: Row(
          children: [
            SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Funcionalidades',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Descreve as funcionalidades do regador'),
                SizedBox(height: 8),
                Text(
                  'Tempo de execução',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Icon(Icons.watch_later_outlined),
                    SizedBox(width: 8),
                    Text('30 minutos'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
