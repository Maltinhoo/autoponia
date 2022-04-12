import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/common_button.dart';
import '../../shared/components/common_field.dart';
import '../../shared/components/password_field.dart';
import '../home/home_page.dart';
import 'login_cubit.dart';
import 'login_state.dart';

class LoginContent extends StatelessWidget {
  final _email = TextEditingController();
  final _pass = TextEditingController();

  LoginContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
          child: BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {},
              child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) => SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Column(children: [
                            Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/logotipo.jpg')),
                            ),
                            SizedBox(height: 20),
                            CommonField(
                                controller: _email,
                                label: 'E-mail',
                                keyboardType: TextInputType.emailAddress),
                            SizedBox(height: 16),
                            PasswordField(controller: _pass, label: 'Senha'),
                            SizedBox(height: 16),
                            CommonButton(
                                text: 'Entrar',
                                function: () {
                                  Navigator.pushNamed(context, HomePage.route);
                                },
                                constraints: constraints)
                          ]),
                        ],
                      )))));
    });
  }
}
