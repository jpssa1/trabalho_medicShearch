import 'package:flutter/material.dart';
import 'package:medic_app/componentes/remedio.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/telas/calendario/calendario_page.dart';
import 'package:medic_app/telas/home/home_page.dart';
import 'package:medic_app/widgets/app_bar_standart.dart';
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
      backgroundColor: Cor.verdeLodo,
      appBar: const AppBarStandart(),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Cor.marrom,
          iconSize: 25,
          selectedItemColor: Cor.verdeIcones,
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
