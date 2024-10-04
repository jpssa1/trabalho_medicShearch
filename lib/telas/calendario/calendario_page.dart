import 'package:flutter/material.dart';
import 'package:medic_app/componentes/event.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/telas/remedios/remedios_page.dart';
import 'package:medic_app/widgets/app_bar_standart.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int selectedIndex = 2;

  final List<Widget> pages = [
    const RemediosPage(), // Corpo da página de Remédios
    const Placeholder(), // Placeholder para Home (você pode substituir pela sua tela Home)
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

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _selectedEvent.value = _getEventsForDay(selectedDay);
      });
    }
  }

  final TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEvent;
  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvent = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  List<Event> _getEventsForDay(DateTime day) {
    return Event.events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.verdeLodo,
      appBar: const AppBarStandart(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Cor.bgverde,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  scrollable: true,
                  title: const Text('Lembrete'),
                  content: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextField(
                      controller: _eventController,
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Event.events.addAll({
                            _selectedDay!: [Event(title: _eventController.text)]
                          });
                          Navigator.of(context).pop();
                          _selectedEvent.value =
                              _getEventsForDay(_selectedDay!);
                          _eventController.clear();
                        },
                        child: const Text(
                          'Salvar',
                          style: TextStyle(color: Cor.preto),
                        ))
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Cor.verdeNeo,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Dia selecionado : ${_focusedDay.toString().split(' ')[0]}',
              style: const TextStyle(color: Cor.branco, fontSize: 20),
            ),
            Card(
              elevation: 10,
              child: TableCalendar(
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                availableGestures: AvailableGestures.all,
                rowHeight: 60,
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2020, 10, 16),
                lastDay: DateTime.utc(2040, 10, 16),
                selectedDayPredicate: (day) => isSameDay(day, _focusedDay),
                onDaySelected: _onDaySelected,
                eventLoader: _getEventsForDay,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ValueListenableBuilder<List<Event>>(
                  valueListenable: _selectedEvent,
                  builder: (context, value, _) {
                    return ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 8,
                          child: ListTile(
                            onTap: () {},
                            title: Text(value[index].title),
                          ),
                        );
                      },
                    );
                  }),
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
