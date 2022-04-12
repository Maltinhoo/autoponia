import 'package:boilerplate_flutter/shared/components/plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login/login_page.dart';
import 'home_cubit.dart';
import 'home_state.dart';

class HomeContent extends StatelessWidget {
  static String route = '/home';
  final BoxConstraints constraints;

  const HomeContent({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.exited) {
          Navigator.pushNamedAndRemoveUntil(
              context, LoginPage.route, (route) => false);
        }
      },
      child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return PlantCard(constraints: constraints);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
