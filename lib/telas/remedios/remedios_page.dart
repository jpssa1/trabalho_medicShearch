import 'package:flutter/material.dart';
import 'package:medic_app/componentes/remedio.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/telas/calendario/calendario_page.dart';
import 'package:medic_app/telas/home/home_page.dart';

import 'package:medic_app/widgets/remedio_screen_view.dart';

class RemediosPage extends StatefulWidget {
  const RemediosPage({super.key});

  @override
  State<RemediosPage> createState() => _RemediosPageState();
}

class _RemediosPageState extends State<RemediosPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const RemediosPage(), // Corpo da página de Remédios
    const HomePage(), // Placeholder para Home (você pode substituir pela sua tela Home)
    const CalendarioPage(), // Página de Calendário
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => _pages[index],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.branco,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Cor.azulbase,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
              ),
              AppBar(
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
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    Text(
                      'remedios',
                      style: TextStyle(
                          color: Cor.branco,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Cor.branco,
                          filled: true,
                          hintText: 'Pesquisar',
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        onChanged: (value) {
                          // Apenas para ilustração, não faz nada
                          print('Texto digitado: $value');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Cor.azulbase,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Favoritos',
                        style: TextStyle(
                          color: Cor.branco,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Cor.azulbase,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Categoria',
                        style: TextStyle(
                          color: Cor.branco,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Cor.azulbase,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'A-Z',
                        style: TextStyle(
                          color: Cor.branco,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200, crossAxisCount: 1),
                itemCount: listaDeRemedios.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RemedioScreenView(
                      titulo: listaDeRemedios[index].nome,
                      imagem: listaDeRemedios[index].imagen,
                      remedio: listaDeRemedios[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Cor.azulbase,
          iconSize: 25,
          selectedItemColor: Cor.azulclaro,
          elevation: 5,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'Medicacoes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendario',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
