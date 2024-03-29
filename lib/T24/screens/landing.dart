import 'dart:io';

import 'package:flutter/material.dart';
import 'package:techkriti/T24/constants/colors_and_fonts.dart';
import 'package:techkriti/T24/notifications.dart';
import 'package:techkriti/T24/screens/4container/BrochurePDF.dart/PDFViewerPage.dart';
import 'package:techkriti/T24/screens/4container/container.dart';
import 'package:techkriti/T24/screens/carousel/gallery_carousal.dart';
import 'package:techkriti/T24/screens/carousel/whatshot.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/competitions/layout.dart';
import 'package:techkriti/T24/appbars/landing_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/final_landing.mov')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            const LandingPage()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingpage';

  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit(context);
    notificationServices.isTokenRefresh();
    notificationServices.setupInteractMessage(context);
    notificationServices.getDeviceToken().then(
      (value) {
        debugPrint('device token');
        debugPrint('oll  $value');
      },
    );
  }

  Future<void> goToWebPage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // color:Colors.red,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/landing_background2.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const LandingAppBar(),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: screenHeight,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Whats hot",
                  textAlign: TextAlign.left,
                  style: headingstyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: WhatsHot(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed(CompetitionPage.routeName),
                  child: const Card1(
                    color: Colors.blue,
                    fontColor: Colors.white,
                    title: "Competitions",
                    Image: NetworkImage(
                        "https://i.postimg.cc/J4Zr2Yht/Copy-of-Robowars.png"),
                    // quote: "Like it or not,Life is a Competition"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed("/workshops"),
                  child: const Card1(
                    color: Colors.black,
                    fontColor: Colors.black,
                    title: "Workshops",
                    Image: NetworkImage(
                        "https://images.unsplash.com/photo-1518770660439-4636190af475?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    // quote:
                    //     "Learn from the best and make your own mark in this workshop"
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Gallery",
                      // textAlign: TextAlign.left,
                      style: headingstyle,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed("/gallery"),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "See more",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'heading',
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Gallery(),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      await goToWebPage(
                          "https://techkriti.org/competitions/technical/");
                    },
                    child: const Container1(
                      title: "Website",
                      fontColor: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed("/contact us"),
                    child: const Container1(
                      title: "Contact Us",
                      fontColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed("/merchandise"),
                    child: const Container1(
                      title: "Past Talks",
                      fontColor: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      const path = 'assets/PDF/Brochure Techkriti\'24.pdf';
                      final file = await PDFViewerPage.loadAsset(path);
                      // ignore: use_build_context_synchronously
                      openPDF(context, file);
                    },
                    child: const Container1(
                      title: "Brochure",
                      fontColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.facebook.com/techkriti.iitk");
                        },
                        icon: Image.asset(
                          'assets/images/facebook.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.instagram.com/techkriti.iitk/");
                        },
                        icon: Image.asset(
                          'assets/images/instagram.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.linkedin.com/school/techkriti-iitk/mycompany/");
                        },
                        icon: Image.asset(
                          'assets/images/linkedin.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.youtube.com/@TechkritiIITKanpur");
                        },
                        icon: Image.asset(
                          'assets/images/youtube.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://twitter.com/i/flow/login?redirect_after_login=%2Ftechkriti_iitk");
                        },
                        icon: Image.asset(
                          'assets/images/twitter.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));
}
