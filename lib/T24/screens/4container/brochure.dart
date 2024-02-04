import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';

class Brochure extends StatefulWidget {
  static const String routeName = '/brochure';

  const Brochure({super.key});

  @override
  State<Brochure> createState() => _BrochureState();
}

class _BrochureState extends State<Brochure> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NormalAppBar(title: "FAQs"),
    );
  }
}
