import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/path/svgs.dart';
import 'package:medic_app/telas/login%20e%20registro/login.dart';
import 'package:medic_app/widgets/button_basic.dart';
import 'package:medic_app/widgets/text_field_basic.dart';

class EsqueciASenha extends StatelessWidget {
  const EsqueciASenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.branco,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 90,
                color: Cor.azulbase,
              ),
              const Text(
                'Esqueceu a senha?',
                style: TextStyle(
                  color: Cor.verdeLodo,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Vamos fazer\n uma nova!',
                style: TextStyle(
                  color: Cor.verdeLodo,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 500,
                decoration: const BoxDecoration(
                  color: Cor.azulbase,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Insira seu Email ou Cpf',
                              style: TextStyle(
                                color: Cor.branco,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          TextFieldBasic(
                            texto: 'Email ou Cpf',
                            corTexto: Cor.branco,
                            corborda: Cor.branco,
                            icone: Icons.mail,
                          ),
                          SizedBox(height: 30),
                          ButtonBasic(
                            page: LoginPage(),
                            texto: 'Mudar senha',
                            cor: Cor.azulclaro,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'voltar para\n     Login',
                      style: TextStyle(color: Cor.branco, fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Cor.branco,
                        size: 50,
                      ),
                    ),
                    SvgPicture.asset(
                      Svgs.logo,
                      height: 120,
                    )
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
