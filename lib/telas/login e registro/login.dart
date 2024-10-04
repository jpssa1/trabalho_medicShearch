import 'package:flutter/material.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/telas/remedios/remedios_page.dart';
import 'package:medic_app/telas/login%20e%20registro/registro.dart';
import 'package:medic_app/widgets/app_bar_pop.dart';
import 'package:medic_app/widgets/button_basic.dart';
import 'package:medic_app/widgets/text_field_basic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.verdeLodo,
      appBar: const AppBarPop(),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
          child: Column(
            children: [
              const Text(
                'Bem-vindo de volta',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Cor.branco),
              ),
              const SizedBox(height: 60),
              const TextFieldBasic(texto: 'Email :'),
              const SizedBox(height: 30),
              const TextFieldBasic(texto: 'Senha :'),
              const SizedBox(height: 70),
              const ButtonBasic(page: RemediosPage(), texto: 'Entrar'),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Nao possui cadastro ?',
                    style: TextStyle(color: Cor.branco),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const RegistroPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'click aqui!!',
                        style: TextStyle(color: Cor.verdeNeo),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
