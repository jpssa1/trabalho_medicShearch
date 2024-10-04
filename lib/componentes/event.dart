class Event {
  final String title;

  Event({required this.title});
  static Map<DateTime, List<Event>> events = {};
}
