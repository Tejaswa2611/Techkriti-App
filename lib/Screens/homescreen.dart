import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
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
import '../hiddendrawers/hidden_dr_faq.dart';

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
                  imagePath: 'assets/images/AboutUs.jpg',
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
                  imagePath: 'assets/images/Prizes.jpg',
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
              ],
              options: CarouselOptions(
                height: 196,
                aspectRatio: screenWidth / screenHeight,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
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
                // Material(
                //   color: Colors.black,
                //   elevation: 20,
                //   borderRadius: BorderRadius.circular(0),
                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                //   child: Ink.image(
                //     image: const AssetImage('assets/images/black.jpg'),
                //     // height: screenHeight * 0.22,
                //     // width: screenWidth * 0.80,
                //     fit: BoxFit.fill,
                //   ),
                // ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl1,
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => CustomCard2(
                      image: const AssetImage('assets/images/black.jpg'),
                      onTap: () {},
                      text: '',
                    ),
                    // height: 300,
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl2,
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => CustomCard2(
                      image: const AssetImage('assets/images/black.jpg'),
                      onTap: () {},
                      text: '',
                    ),
                    // height: 300,
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl3,
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => CustomCard2(
                      image: const AssetImage('assets/images/black.jpg'),
                      onTap: () {},
                      text: '',
                    ),
                    // height: 300,
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl4,
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => CustomCard2(
                      image: const AssetImage('assets/images/black.jpg'),
                      onTap: () {},
                      text: '',
                    ),
                    // height: 300,
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl5,
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => CustomCard2(
                      image: const AssetImage('assets/images/black.jpg'),
                      onTap: () {},
                      text: '',
                    ),
                    // height: 300,
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 196,
                aspectRatio: screenWidth / screenHeight,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
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
                  onTap: () {},
                  text: 'HC Verma',
                ),
                CustomCard3(
                  imagePath: 'assets/images/GilbertStrang2.jpg',
                  onTap: () {},
                  text: 'William Gilbert Strang',
                ),
                CustomCard3(
                  imagePath: 'assets/images/AmanDhattarwal2.jpg',
                  onTap: () {},
                  text: 'Aman Dhattarwal',
                ),
                CustomCard3(
                  imagePath: 'assets/images/DCPandey.jpg',
                  onTap: () {},
                  text: 'DC Pandey',
                ),
                CustomCard3(
                  imagePath: 'assets/images/DineshKumar.jpg',
                  onTap: () {},
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
