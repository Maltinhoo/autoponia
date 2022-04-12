import 'package:flutter/material.dart';

import '../../modules/plant/plant_page.dart';
import 'custom_alert.dart';

class PlantCard extends StatelessWidget {
  final BoxConstraints constraints;
  const PlantCard({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onLongPress: (() => customAlert(
            context: context,
            constraints: constraints,
            title: 'Deseja excluir planta?',
            text1: 'Sim',
            text2: 'Não',
            function: () {
              Navigator.pop(context);
            },
            secondFunction: () {
              Navigator.pop(context);
            })),
        onTap: () {
          Navigator.pushNamed(context, PlantPage.route);
        },
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: constraints.maxHeight * .25,
          width: constraints.maxWidth * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: constraints.maxHeight * .25,
                  width: constraints.maxWidth * .4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/planta.png'),
                  )),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Nome da Plantinha',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Descrição da plantinha',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
