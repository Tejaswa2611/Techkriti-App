class CardData {
  final String title;
  final String content;

  const CardData({
    required this.title,
    required this.content,
  });

  factory CardData.fromMap(Map<String, dynamic> map) {
    return CardData(
      title: map['title'] as String,
      content: map['content'] as String,
    );
  }
}
