import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';

class FAQ extends StatefulWidget {
  static const String routeName = '/faqs';

  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: NormalAppBar(title: "FAQs"));
  }
}
