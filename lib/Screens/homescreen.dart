import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:techkriti/Screens/pastpapers.dart';
import 'package:techkriti/Widgets/timelinecards.dart';
import 'package:techkriti/constants/colors_and_fonts.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_conduction.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_contact.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_gallery.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_prizes.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_sponsors.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_testimonial.dart';
import 'package:techkriti/hiddendrawers/hidden_drawer_about.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Screens/rectangleboxes.dart';
import '../Services/notification_services.dart';
import '../Widgets/carouselcard.dart';
import '../constants/utils.dart';
import '../hiddendrawers/hidden_dr_faq.dart';

String? selectedImageUrl;

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homescreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String imageUrl1;
  late String imageUrl2;
  late String imageUrl3;
  late String imageUrl4;
  late String imageUrl5;

  NotificationServices notificationServices = NotificationServices();
  final storage = FirebaseStorage.instance;

  @override
  void initState() {
    super.initState();
    // super.initState();
    imageUrl1 = '';
    imageUrl2 = '';
    imageUrl3 = '';
    imageUrl4 = '';
    imageUrl5 = '';
    fetchData();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit(context);
    // notificationServices.isTokenRefresh();
    notificationServices.setupInteractMessage(context);
    notificationServices.getDeviceToken().then(
      (value) {
        debugPrint('device token');
        debugPrint(value);
      },
    );
  }

  Future<void> fetchData() async {
    await getImageUrl();
  }

  Future<void> getImageUrl() async {
    final ref1 = storage.ref().child('timeline1.jpg');
    final ref2 = storage.ref().child('timeline2.jpg');
    final ref3 = storage.ref().child('timeline3.jpg');
    final ref4 = storage.ref().child('timeline4.jpg');
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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CarouselSlider(
              items: [
                CustomCard3(
                  imagePath: 'assets/images/Conduction.jpg',
                  onTap: () => Navigator.pushNamed(
                      context, HiddenDrawerConduction.routeName),
                  text: 'Conduction',
                ),
                CustomCard3(
                  imagePath: 'assets/images/AboutUs2.jpg',
                  onTap: () =>
                      Navigator.pushNamed(context, HiddenDrawer.routeName),
                  text: 'About Us',
                ),
                CustomCard3(
                  imagePath: 'assets/images/Testimonial.jpg',
                  onTap: () => Navigator.pushNamed(
                      context, HiddenDrawerTestimonial.routeName),
                  text: 'Testimonials',
                ),
                CustomCard3(
                  imagePath: 'assets/images/Prizes2.jpg',
                  onTap: () => Navigator.pushNamed(
                      context, HiddenDrawerPrizes.routeName),
                  text: 'Prizes',
                ),
                CustomCard3(
                  imagePath: 'assets/images/Gallary.jpg',
                  onTap: () => Navigator.pushNamed(
                      context, HiddenDrawerGallery.routeName),
                  text: 'Gallery',
                ),
                CustomCard3(
                  imagePath: 'assets/images/pastpapers.jpg',
                  onTap: () =>
                      Navigator.pushNamed(context, PastPapersPage.routeName),
                  text: 'Past Papers',
                ),
              ],
              options: CarouselOptions(
                height: 196,
                aspectRatio: screenWidth / screenHeight,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.25,
                // onPageChanged: _onCarouselPageChanged,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Timeline",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'heading',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: [
                TimelineCard(
                  imageUrl: imageUrl1,
                  onTap: () {
                    setState(
                      () {
                        selectedImageUrl = imageUrl1;
                      },
                    );
                    _showImagePopup(context, imageUrl1);
                  },
                ),
                TimelineCard(
                  imageUrl: imageUrl2,
                  onTap: () {
                    setState(
                      () {
                        selectedImageUrl = imageUrl2;
                      },
                    );
                    _showImagePopup(context, imageUrl2);
                  },
                ),
                TimelineCard(
                  imageUrl: imageUrl3,
                  onTap: () {
                    setState(
                      () {
                        selectedImageUrl = imageUrl3;
                      },
                    );
                    _showImagePopup(context, imageUrl3);
                  },
                ),
                TimelineCard(
                  imageUrl: imageUrl4,
                  onTap: () {
                    setState(
                      () {
                        selectedImageUrl = imageUrl4;
                      },
                    );
                    _showImagePopup(context, imageUrl4);
                  },
                ),
                TimelineCard(
                  imageUrl: imageUrl5,
                  onTap: () {
                    setState(
                      () {
                        selectedImageUrl = imageUrl5;
                      },
                    );
                    _showImagePopup(context, imageUrl5);
                  },
                ),
              ],
              options: CarouselOptions(
                height: 196,
                aspectRatio: screenWidth / screenHeight,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.linear,
                enlargeCenterPage: true,
                animateToClosest: true,
                enlargeFactor: 0.2,
                pauseAutoPlayOnTouch: true,
                // onPageChanged: _onCarouselPageChanged,
                scrollDirection: Axis.horizontal,
                // disableCenter: true,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Past Talks",
              style: TextStyle(
                  fontFamily: 'heading',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: [
                CustomCard3(
                  imagePath: 'assets/images/HC Verma 2.jpg',
                  onTap: () {
                    _showPersonalityDetailsPopup(
                      context,
                      title: 'HC Verma',
                      description:
                          "H.C. Verma, a distinguished physicist and educator, is renowned for his seminal work 'Concepts of Physics.' Through his book, he has simplified intricate physics principles, enabling students to grasp fundamental concepts with clarity and ease. His dedication to simplifying complex topics has had a profound impact on physics education.",
                    );
                  },
                  text: 'HC Verma',
                ),
                CustomCard3(
                  imagePath: 'assets/images/GilbertStrang2.jpg',
                  onTap: () {
                    _showPersonalityDetailsPopup(
                      context,
                      title: 'William Gilbert Strang',
                      description:
                          "Gilbert Strang, a renowned mathematician and educator, has made significant contributions to linear algebra and numerical analysis. His innovative teaching at MIT and insightful textbooks have simplified complex concepts, leaving a lasting impact on mathematics education.",
                    );
                  },
                  text: 'William Gilbert Strang',
                ),
                CustomCard3(
                  imagePath: 'assets/images/AmanDhattarwal.jpg',
                  onTap: () {
                    _showPersonalityDetailsPopup(
                      context,
                      title: 'Aman Dhattarwal',
                      description:
                          " Aman Dhattarwal, an influential educator and YouTuber, has revolutionized education through his engaging online tutorials. By offering pragmatic insights and effective study techniques, he empowers students to conquer academic hurdles with enhanced understanding and self-assurance.",
                    );
                  },
                  text: 'Aman Dhattarwal',
                ),
                CustomCard3(
                  imagePath: 'assets/images/DCPandey.jpg',
                  onTap: () {
                    _showPersonalityDetailsPopup(
                      context,
                      title: 'DC Pandey',
                      description:
                          "D.C. Pandey's reputation as an esteemed physics educator and author is grounded in his exceptional contributions to the realm of science education. His meticulously crafted study materials have not only equipped students with a profound grasp of physics concepts but also fostered their aptitude for critical thinking and problem-solving, enabling them to excel in competitive examinations and beyond.",
                    );
                  },
                  text: 'DC Pandey',
                ),
                CustomCard3(
                  imagePath: 'assets/images/DineshKumar.jpg',
                  onTap: () {
                    _showPersonalityDetailsPopup(
                      context,
                      title: 'Prof Dinesh Kumar Saklani',
                      description:
                          "Prof. Dinesh Kumar Saklani is a prominent figure in the field of mathematics education, widely recognized for his significant contributions. Holding the esteemed position of Director at the National Council of Educational Research and Training (NCERT), his influence extends to shaping educational policies and strategies on a national level.",
                    );
                  },
                  text: 'Prof Dinesh Kumar Saklani',
                ),
              ],
              options: CarouselOptions(
                height: 196,
                aspectRatio: screenWidth / screenHeight,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.25,
                // onPageChanged: _onCarouselPageChanged,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, HiddenDrawerSponsers.routeName),
                    child: const ElevatedContainer(
                      assetPath: 'assets/images/Sponsors.jpg',
                      text: 'Sponsors',
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, HiddenDrawerFaq.routeName),
                    child: const ElevatedContainer(
                      assetPath: 'assets/images/FAQ.jpg',
                      text: 'FAQ',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, HiddenDrawerContact.routeName),
                    child: const ElevatedContainer(
                      assetPath: 'assets/images/ContactUs.jpg',
                      text: 'Contact Us',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HiddenDrawerContact(),
                        ),
                      );
                    },
                    child: InkWell(
                      onTap: () {
                        _launchWebsite();
                      },
                      child: const ElevatedContainer(
                        assetPath: 'assets/images/Website.jpg',
                        text: 'Website',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

_launchWebsite() async {
  const url = 'https://tosc.techkriti.org/';
  debugPrint("Launching Website");
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

void _showImagePopup(BuildContext context, String imageUrl) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Center(
            child: SizedBox(
              height: 196,
              child: PhotoView(
                imageProvider: NetworkImage(imageUrl),
                backgroundDecoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                scaleStateController: PhotoViewScaleStateController(),
                initialScale: PhotoViewComputedScale.covered,
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
                loadingBuilder: (BuildContext context, ImageChunkEvent? event) {
                  if (event == null) {
                    return Container();
                  } else {
                    return spinkit;
                  }
                },
              ),
            ),
          ),
        ),
      );
    },
  );
}

void _showPersonalityDetailsPopup(BuildContext context,
    {required String title, required String description}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context); // Dismiss the dialog on tap outside
        },
        child: SingleChildScrollView(
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: headingFont,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: textFont,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
