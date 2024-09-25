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
      backgroundColor: Cor.verdeLodo,
      appBar: const AppBarPop(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: Card(
              color: Cor.bgverde,
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
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 300,
              child: Card(
                color: Cor.verdeIcones,
                elevation: 10,
                child: Image.asset(
                  remedio.imagen,
                  width: 180,
                  height: 180,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 300,
            child: Card(
              color: Cor.bgverde,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Indicado para : ',
                        style: TextStyle(
                            color: Cor.branco,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        remedio.indicacao,
                        style: const TextStyle(
                            color: Cor.branco, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            width: 300,
            child: Card(
              color: Cor.bgverde,
              elevation: 10,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Contra indicação : ',
                        style: TextStyle(
                            color: Cor.branco,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        remedio.contraIndicacoes,
                        style: const TextStyle(
                            color: Cor.branco, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 300,
              height: 30,
              child: Card(
                color: Cor.bgverde,
                elevation: 10,
                child: Center(
                  child: Text(
                    remedio.precisaDeReceita
                        ? 'MEDICAMENTO requer receita medica'
                        : 'MEDICAMENTO nao requer receita medica',
                    style: const TextStyle(
                      color: Cor.branco,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
