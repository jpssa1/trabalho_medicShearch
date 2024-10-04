import 'package:flutter/material.dart';
import 'package:medic_app/componentes/remedio.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/telas/calendario/calendario_page.dart';
import 'package:medic_app/telas/remedios/remedios_page.dart';
import 'package:medic_app/widgets/app_bar_standart.dart';
import 'package:medic_app/widgets/remedio_screen_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;

  final List<Widget> pages = [
    const RemediosPage(),
    const HomePage(), // Placeholder para Home (você pode substituir pela sua tela Home)
    const CalendarioPage(), // Página de Calendário
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => pages[index],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.verdeLodo,
      appBar: AppBarStandart(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: Cor.bgverde,
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 90,
                  ),
                  Text(
                    'Joao Pedro Sousa',
                    style: TextStyle(
                        color: Cor.preto,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Cor.bgverde,
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Ultimos pedidos',
                          style: TextStyle(
                              color: Cor.preto,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        RemedioScreenView(
                          titulo: dipirona.nome,
                          imagem: dipirona.imagen,
                          remedio: dipirona,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Card(
              color: Cor.bgverde,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      'lista de tarefas : ',
                      style: TextStyle(
                          color: Cor.preto,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        color: Cor.verdeIcones,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.check_box),
                              Text('tomar dorfex'),
                              Icon(Icons.delete)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        color: Cor.verdeIcones,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.check_box_outline_blank),
                              Text('tomar domperidona'),
                              Icon(Icons.delete)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        color: Cor.verdeIcones,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.check_box),
                              Text('tomar ritalina'),
                              Icon(Icons.delete)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
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
          currentIndex: selectedIndex,
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
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
