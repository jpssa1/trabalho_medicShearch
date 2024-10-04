import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';
import 'package:medic_app/telas/remedios/remedios_page.dart';
import 'package:medic_app/telas/login%20e%20registro/login.dart';
import 'package:medic_app/widgets/button_basic.dart';
import 'package:medic_app/widgets/text_field_basic.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.verdeLodo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Cor.verdeNeo),
        centerTitle: true,
        title: SvgPicture.asset(
          Svgs.logo,
          height: 130,
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Não possui cadastro? crie aqui:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Cor.branco,
                ),
              ),
              const SizedBox(height: 60),
              const TextFieldBasic(texto: 'Nome :'),
              const SizedBox(height: 30),
              const TextFieldBasic(texto: 'Email :'),
              const SizedBox(height: 30),
              const TextFieldBasic(texto: 'Senha :'),
              const SizedBox(height: 70),
              const ButtonBasic(page: RemediosPage(), texto: 'Cadastrar'),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ja possui cadastro ?',
                    style: TextStyle(
                      color: Cor.branco,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginPage(),
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
