import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';
import 'package:medic_app/telas/login%20e%20registro/login.dart';
import 'package:medic_app/telas/login%20e%20registro/registro.dart';
import 'package:medic_app/widgets/button_basic.dart';

class LoginOuRegistroPage extends StatelessWidget {
  const LoginOuRegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.verdeLodo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Svgs.logoComNomeBranco),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: ButtonBasic(
                    page: RegistroPage(),
                    texto: 'Cadastrar',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ButtonBasic(
                    page: LoginPage(),
                    texto: 'Entrar',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
