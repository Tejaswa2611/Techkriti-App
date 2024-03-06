import 'package:flutter/material.dart';
import 'package:techkriti/T24/navigation/Schedule/datamodel.dart';

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent, 
      elevation: 0,
      margin: const EdgeInsets.all(5.0), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(
          color: Colors.white,
          width: 1.5, 
        ),
      ),
      child: ListTile(
        title: Text(
          cardData.title,
          style: const TextStyle(
            color: Colors.white, 
          ),
        ),
        subtitle: Text(
          cardData.content,
          style: const TextStyle(
            color: Colors.white, 
          ),
        ),
      ),
    );
  }
}
