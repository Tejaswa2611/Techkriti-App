import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';

class Merchandise extends StatefulWidget {
  static const String routeName = '/merchandise';

  const Merchandise({super.key});

  @override
  State<Merchandise> createState() => _MerchandiseState();
}

class _MerchandiseState extends State<Merchandise> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: NormalAppBar(title: "Merchandise"));
  }
}
