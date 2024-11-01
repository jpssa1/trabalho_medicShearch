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
      backgroundColor: Cor.branco,
      appBar: AppBar(
        backgroundColor: Cor.azulbase,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.volume_up,
            size: 50,
            color: Cor.azulclaro,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 40,
                color: Cor.azulclaro,
              ))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Cor.azulbase,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vamos la!',
                      style: TextStyle(
                        color: Cor.branco,
                        fontSize: 45,
                      ),
                    ),
                    Text(
                      'Crie sua conta',
                      style: TextStyle(
                          color: Cor.branco,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
              child: Column(
                children: [
                  TextFieldBasic(
                    texto: 'Nome completo',
                    corTexto: Cor.cinza,
                    corborda: Cor.preto,
                    icone: Icons.person,
                  ),
                  SizedBox(height: 20),
                  TextFieldBasic(
                    texto: 'E-mail ou Cpf',
                    corTexto: Cor.cinza,
                    corborda: Cor.preto,
                    icone: Icons.mail,
                  ),
                  SizedBox(height: 20),
                  TextFieldBasic(
                    texto: 'Senha',
                    corTexto: Cor.cinza,
                    corborda: Cor.preto,
                    icone: Icons.lock,
                  ),
                  SizedBox(height: 20),
                  TextFieldBasic(
                    texto: 'Repetir Senha',
                    corTexto: Cor.cinza,
                    corborda: Cor.preto,
                    icone: Icons.lock,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 40, bottom: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(value: false, onChanged: null),
                      Text('eu aceito os'),
                      Text(
                        'Termos de privacidade',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                ButtonBasic(
                  page: RegistroPage(),
                  texto: 'Entrar',
                  cor: Cor.azulbase,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ja possui conta?!'),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Entre nela',
                          style: TextStyle(color: Cor.preto),
                        ))
                  ],
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        Svgs.logo,
                        width: 150,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
