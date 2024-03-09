class CardData {
  final String event;
  final String venue;
  final String time;

  const CardData({
    required this.event,
    required this.venue,
    required this.time,
  });

  factory CardData.fromMap(Map<String, dynamic> map) {
    return CardData(
      event: map['event'] as String,
      venue: map['venue'] as String,
      time: map['time'] as String,
    );
  }
}
