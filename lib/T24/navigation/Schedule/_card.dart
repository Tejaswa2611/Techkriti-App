import 'package:flutter/material.dart';
import 'package:techkriti/T24/navigation/Schedule/datamodel.dart';

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cardData.title),
        subtitle: Text(cardData.content),
      ),
    );
  }
}
