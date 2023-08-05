import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techkriti/Screens/conduction.dart';
import 'package:techkriti/Screens/prizes.dart';
import 'package:techkriti/Screens/testimonial.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_conduction.dart';
import 'package:techkriti/hiddendrawers/hidden_drawer.dart';
import '../Screens/rectangleboxes.dart';
import '../Widgets/CarouselCard.dart';

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
                      builder: (context) => TestimonialsPage(),
                    ),
                  ),
                  text: 'Testimonials',
                ),
                CustomCard(
                  image: const AssetImage('assets/images/black.jpg'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrizesPage(),
                    ),
                  ),
                  text: 'Prizes',
                ),
              ],
              options: CarouselOptions(
                height: screenHeight * 0.28,
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HiddenDrawer(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image:
                                  const AssetImage('assets/images/black.jpg'),
                              height: screenHeight * 0.2,
                              width: screenWidth * 0.50,
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
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Material(
                      color: Colors.black,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(2),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Conduction(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image:
                                  const AssetImage('assets/images/black.jpg'),
                              height: screenHeight * 0.2,
                              width: screenWidth * 0.50,
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
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gallery",
                    style: TextStyle(
                      fontFamily: 'heading',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all ➡",
                    style: TextStyle(
                      fontFamily: 'heading',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Conduction(),
                        ),
                      );
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/black.jpg'),
                      height: screenHeight * 0.22,
                      // width: screenWidth * 0.80,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: screenHeight * 0.25,
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedContainer(
                    assetPath: 'assets/images/sponsors.png',
                    text: 'Sponsors',
                  ),
                  ElevatedContainer(
                    assetPath: 'assets/images/faq.png',
                    text: 'FAQ',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedContainer(
                    assetPath: 'assets/images/contact.png',
                    text: 'Contact Us',
                  ),
                  ElevatedContainer(
                    assetPath: 'assets/images/website.png',
                    text: 'Website',
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
