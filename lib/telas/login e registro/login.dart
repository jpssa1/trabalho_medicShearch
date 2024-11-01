import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';
import 'package:medic_app/telas/login%20e%20registro/esqueci_a_senha.dart';
import 'package:medic_app/telas/login%20e%20registro/registro.dart';
import 'package:medic_app/telas/remedios/remedios_page.dart';
import 'package:medic_app/widgets/button_basic.dart';
import 'package:medic_app/widgets/text_field_basic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.azulbase,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_up,
              size: 50,
              color: Cor.azulclaro,
            )),
        title: const Text(
          'Bem vindo!',
          style: TextStyle(
            color: Cor.branco,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SvgPicture.asset(
              Svgs.logoComNomeBranco,
              height: 300,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextFieldBasic(
                texto: 'Email ou CPF',
                corTexto: Cor.azulclaro,
                corborda: Cor.branco,
                icone: Icons.person,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextFieldBasic(
                texto: 'Senha ',
                corTexto: Cor.azulclaro,
                corborda: Cor.branco,
                icone: Icons.lock,
              ),
            ),
            const SizedBox(height: 20),
            const ButtonBasic(
              page: RemediosPage(),
              texto: 'Entrar',
              cor: Cor.azulclaro,
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 500,
              decoration: const BoxDecoration(
                  color: Cor.branco,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Text(
                      'Esqueceu a senha ?',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    ButtonBasic(
                      page: EsqueciASenha(),
                      texto: 'Mudar a senha',
                      cor: Cor.azulclaro,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ou',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    ButtonBasic(
                      page: RegistroPage(),
                      texto: 'Criar conta',
                      cor: Cor.azulclaro,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
