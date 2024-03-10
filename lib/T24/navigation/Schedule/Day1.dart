import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:techkriti/T24/navigation/Schedule/_card.dart';
import 'package:techkriti/T24/navigation/Schedule/datamodel.dart';

class Day1 extends StatefulWidget {
  const Day1({Key? key}) : super(key: key);

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  final _database = FirebaseDatabase.instance.ref().child('Day1');
  Stream<List<CardData>>? _cardStream;
//
  @override
  void initState() {
    super.initState();
    _cardStream = _database.onValue.map((event) {
      final data = event.snapshot.children.map((child) {
        final map = child.value as Map<dynamic, dynamic>;
        if (map.keys.every((key) => key is String)) {
          return CardData.fromMap(map.cast<String, dynamic>());
        } else {
          throw Exception("Invalid map keys in card data: ${map.keys}");
        }
      }).toList();

      if (data.isEmpty) {
        throw Exception("No data found in Firebase");
      }

      return data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/TechnicalB.png",
            ),
          ),
        ),
        child: StreamBuilder<List<CardData>>(
          stream: _cardStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (!snapshot.hasData) {
              return Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              );
            }

            final cards = snapshot.data!;
            return ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) => CardWidget(
                cardData: cards[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
