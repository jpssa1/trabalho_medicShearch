import 'package:flutter/material.dart';
import 'package:medic_app/componentes/remedio.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/widgets/app_bar_pop.dart';

class RemedioDetalhesPage extends StatelessWidget {
  final Remedio remedio;
  const RemedioDetalhesPage({
    super.key,
    required this.remedio,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.branco,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Cor.azulbase,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: AppBar(
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
                          ),
                        )
                      ],
                      centerTitle: true,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: Image.asset(
                        remedio.imagen,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 375,
            child: Card(
              color: Cor.azulbase,
              elevation: 10,
              child: Center(
                child: Text(
                  remedio.nome,
                  style: const TextStyle(
                      color: Cor.branco,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Indicado para : ',
            style: TextStyle(
              color: Cor.azulbase,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 375,
            height: 130,
            child: Card(
              color: Cor.azulbase,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        remedio.indicacao,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Cor.branco,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Contra indicação : ',
            style: TextStyle(
              color: Cor.azulbase,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 200,
            width: 375,
            child: Card(
              color: Cor.azulbase,
              elevation: 10,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        remedio.contraIndicacoes,
                        style: const TextStyle(
                            color: Cor.branco,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
