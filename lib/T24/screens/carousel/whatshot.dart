import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class WhatsHot extends StatefulWidget {
  const WhatsHot({super.key});

  @override
  State<WhatsHot> createState() => _WhatsHotState();
}

class _WhatsHotState extends State<WhatsHot> {
  late String imageUrl1;
  late String imageUrl2;
  late String imageUrl3;
  late String imageUrl4;
  late String imageUrl5;
  final storage = FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
    imageUrl1 = '';
    imageUrl2 = '';
    imageUrl3 = '';
    imageUrl4 = '';
    imageUrl5 = '';
    fetchData();
  }

  Future<void> fetchData() async {
    await getImageUrl();
  }

  Future<void> getImageUrl() async {
    final ref1 = storage.ref().child('TechTalk.jpg');
    final ref2 = storage.ref().child('AutoShow.jpg');
    final ref3 = storage.ref().child('CycleShow.jpg');
    final ref4 = storage.ref().child('DriftShow.jpg');
    final ref5 = storage.ref().child('timeline5.jpg');
    final url1 = await ref1.getDownloadURL();
    final url2 = await ref2.getDownloadURL();
    final url3 = await ref3.getDownloadURL();
    final url4 = await ref4.getDownloadURL();
    final url5 = await ref5.getDownloadURL();
    setState(
      () {
        imageUrl1 = url1;
        imageUrl2 = url2;
        imageUrl3 = url3;
        imageUrl4 = url4;
        imageUrl5 = url5;
      },
    );
  }

  final CarouselController cc1 = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    imageUrl1,
                    fit: BoxFit.fill,
                    width: Width / 1.4,
                  ),
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      imageUrl2,
                      fit: BoxFit.fill,
                      width: Width / 1.4,
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      imageUrl3,
                      fit: BoxFit.fill,
                      width: Width / 1.4,
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      imageUrl4,
                      fit: BoxFit.fill,
                      width: Width / 1.4,
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      imageUrl5,
                      fit: BoxFit.fill,
                      width: Width / 1.4,
                    )),
              ],
              carouselController: cc1,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
