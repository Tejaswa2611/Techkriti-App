import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import '../constants/colors_and_fonts.dart';
import '../constants/utils.dart';

class PrizesPage extends StatefulWidget {
  const PrizesPage({super.key});

  @override
  State<PrizesPage> createState() => _PrizesPageState();
}

class _PrizesPageState extends State<PrizesPage> {
  late String imageUrl;
  String? details;
  double? fontsize;
  final storage = FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
    imageUrl = '';
    fetchData();
    //  getImageUrl();
    // fetchConduction();
  }

  Future<void> fetchData() async {
    await getImageUrl();
    await fetchConduction();
  }

  Future<void> getImageUrl() async {
    final ref = storage.ref().child('prize.png');
    final url = await ref.getDownloadURL();
    setState(
      () {
        imageUrl = url;
      },
    );
  }

  Future<void> fetchConduction() async {
    try {
      var snapshot = await FirebaseFirestore.instance
          .collection('Techkriti')
          .doc('1')
          .get();
      var data = snapshot.data();
      if (data != null) {
        setState(
          () {
            details = data['Conduction'];
            fontsize = (data['fsize'] as int).toDouble();
          },
        );
        debugPrint('Fetched data: $data'); // Add this line for debugging
      }
    } catch (error) {
      debugPrint('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            FadeInLeft(
              child: const Text(
                "Prizes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: headingFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FadeInLeft(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, url) => const Center(
                    child: spinkit), // Optional placeholder while loading
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error_outline_sharp),
                height: 300, // Optional error placeholder
              ),
            ),
            FadeInRight(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'TOSC’21 brought together a huge number of participants from all over the nation in the hopes of learning something new.\n'
                  'A plethora of prizes and accolades were presented to the winning participants and teams.\n'
                  'Prizes upto 2 Lac, including Tablets, Speakers, Smart Watches, and many more goodies.\n'
                  '• Top 10 from each pool will get online subscriptions, gift vouchers and exciting goodies.\n'
                  '• Merit certificates for city wise toppers and all top 100 from each pool.\n'
                  '• Participation certificates for all participants.\n'
                  '• The school $details with maximum participants will be presented the Best School Award.',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontFamily: textFont,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
