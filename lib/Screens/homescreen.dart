import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_conduction.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_contact.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_prizes.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_sponsors.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_testimonial.dart';
import 'package:techkriti/hiddendrawers/hidden_drawer_about.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Screens/rectangleboxes.dart';
import '../Widgets/CarouselCard.dart';
import '../hiddendrawers/hidden_dr_faq.dart';
import '../hiddendrawers/hidden_dr_gallery.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            CarouselSlider(
              items: [
                CustomCard(
                  image: const AssetImage('assets/images/black.jpg'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HiddenDrawerConduction(),
                    ),
                  ),
                  text: 'Conduction',
                ),
                CustomCard(
                  image: const AssetImage('assets/images/black.jpg'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HiddenDrawer(),
                    ),
                  ),
                  text: 'About Us',
                ),
                CustomCard(
                  image: const AssetImage('assets/images/black.jpg'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HiddenDrawerTestimonial(),
                    ),
                  ),
                  text: 'Testimonials',
                ),
                CustomCard(
                  image: const AssetImage('assets/images/black.jpg'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HiddenDrawerPrizes(),
                    ),
                  ),
                  text: 'Prizes',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      color: Colors.black,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(2),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image:
                                const AssetImage('assets/images/black.jpg'),
                            height: 154,
                            width: 180,
                            fit: BoxFit.fill,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Past talk 1',
                                  style: TextStyle(
                                      fontFamily: 'heading',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    
                    Material(
                      color: Colors.black,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(2),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image:
                                const AssetImage('assets/images/black.jpg'),
                            height: 154,
                            width: 180,
                            fit: BoxFit.fill,
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Past talk 2',
                                  style: TextStyle(
                                      fontFamily: 'heading',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Gallery",
                    style: TextStyle(
                      fontFamily: 'heading',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HiddenDrawerGallery(),
                        ),
                      );
                    },
                    child: const Text(
                      "See all ➡ ",
                      style: TextStyle(
                        fontFamily: 'heading',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: [
                Material(
                  color: Colors.black,
                  elevation: 20,
                  borderRadius: BorderRadius.circular(0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Ink.image(
                    image: const AssetImage('assets/images/black.jpg'),
                    height: screenHeight * 0.22,
                    // width: screenWidth * 0.80,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 196,
                aspectRatio: screenWidth / screenHeight,
                viewportFraction: 0.84,
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HiddenDrawerSponsers(),
                        ),
                      );
                    },
                    child: const ElevatedContainer(
                      assetPath: 'assets/images/sponsors.png',
                      text: 'Sponsors',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HiddenDrawerFaq(),
                        ),
                      );
                    },
                    child: const ElevatedContainer(
                      assetPath: 'assets/images/faq.png',
                      text: 'FAQ',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HiddenDrawerContact(),
                        ),
                      );
                    },
                    child: const ElevatedContainer(
                      assetPath: 'assets/images/contact.png',
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
                        assetPath: 'assets/images/website.png',
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
