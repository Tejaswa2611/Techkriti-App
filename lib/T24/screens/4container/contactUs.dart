import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';
import 'package:techkriti/T24/screens/4container/contact_card.dart';

class ContactUs extends StatefulWidget {
  static const String routeName = '/contact us';

  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactsState();
}

class _ContactsState extends State<ContactUs> {
  TextStyle contactHeading = const TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.bold,
      letterSpacing: 1.33);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Our Team.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const NormalAppBar(title: "Contact Us"),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: "TEAM ",
                            style: TextStyle(color: Colors.white)),
                        TextSpan(
                            text: "TECHKRITI'24",
                            style: TextStyle(
                                color: Color.fromARGB(255, 55, 255, 245))),
                      ],
                      style: TextStyle(fontSize: 35, fontFamily: 'Equinox'),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 8),
                child: Center(
                  child: Text("Events and Competition", style: contactHeading),
                ),
              ),
              const contactCard(
                  name: "Raghav Modani",
                  department: "Head, Events and Competition",
                  mobile: "+91 7357617960",
                  facebook:
                      "https://www.facebook.com/raghav.modani.35?mibextid=9R9pXO",
                  insta:
                      "https://www.instagram.com/raghavm_910/?igsh=YTQwZjQ0NmI0OA%3D%3D",
                  linkedIn:
                      "https://www.linkedin.com/in/raghav-modani-633811214/",
                  mail: "mailto:raghavm@techkriti.org",
                  image: "assets/images/Raghav.jpg"),
              const contactCard(
                  name: "Nikund Jain",
                  department: "Head, Events and Competition",
                  mobile: "+91 8126376220",
                  facebook:
                      "https://www.facebook.com/nikund.jain.5?mibextid=ZbWKwL",
                  insta:
                      "https://www.instagram.com/nikund_jain/?igsh=OGQ5ZDc2ODk2ZA%3D%3D",
                  linkedIn:
                      "https://www.linkedin.com/in/nikund-jain-4b64b6123?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
                  mail: "mailto:nikund@techkriti.org",
                  image: "assets/images/Nikund.jpg"),
              const contactCard(
                  name: "      Abhiyanshu     \n           Kumar",
                  department: "Head, Events and Competition",
                  mobile: "+91 7376563700",
                  facebook:
                      "https://www.facebook.com/abhiyanshu.kumar.90?mibextid=ZbWKwL",
                  insta: "https://www.instagram.com/__abhi__6212/",
                  linkedIn: "",
                  mail: "mailto:abhiyanshu@techkriti.org",
                  image: "assets/images/Abhiyanshu.JPG"),
              Center(
                child: Text("Marketing", style: contactHeading),
              ),
              const contactCard(
                  name: "Ambuj Pyne",
                  department: "Head, Marketing",
                  mobile: "+91 9305642919",
                  facebook:
                      "https://www.facebook.com/profile.php?id=100075328710987",
                  insta: "https://www.instagram.com/ambujpyne/",
                  linkedIn: "https://www.linkedin.com/in/ambuj-pyne-427b9022b/",
                  mail: "mailto:ambuj@techkriti.org",
                  image: "assets/images/Ambuj.jpg"),
              const contactCard(
                  name: "Amol Garg",
                  department: "Head, Marketing",
                  mobile: "+91 7351867690",
                  facebook: "https://www.facebook.com/amol.garg.547",
                  insta: "https://www.instagram.com/amol_garg0807/",
                  linkedIn: "https://www.linkedin.com/in/amol-garg-375b42244/",
                  mail: "mailto:amol@techkriti.org",
                  image: "assets/images/Amol.JPG"),
              Center(
                child: Text("Public Relations", style: contactHeading),
              ),
              const contactCard(
                  name: "Jyotirmay",
                  department: "Head, Public Relations",
                  mobile: "+91 9889361111",
                  facebook: "",
                  insta: "https://www.instagram.com/__jyotirmay_singh__/",
                  linkedIn:
                      "https://www.linkedin.com/in/jyotirmay-singh-63686a223/",
                  mail: "mailto:jyotirmay@techkriti.org",
                  image: "assets/images/jyotirmay.jpeg"),
              Center(
                child: Text("Web and App", style: contactHeading),
              ),
              const contactCard(
                  name: "Chitwan Goel",
                  department: "Head, Web and App",
                  mobile: "+91 7310826277",
                  facebook:
                      "https://www.facebook.com/profile.php?id=100074761380552",
                  insta: "https://www.instagram.com/goel.chitwan/",
                  linkedIn: "https://www.linkedin.com/in/chitwan-goel/",
                  mail: "mailto:chitwangoel@techkriti.org",
                  image: "assets/images/chitwan.jpeg"),
              const contactCard(
                  name: "Tejaswa Mathur",
                  department: "Head, Web and App",
                  mobile: "+91 9761580119",
                  facebook:
                      "https://www.facebook.com/profile.php?id=100075323288946&mibextid=ZbWKwL",
                  insta:
                      "https://www.instagram.com/__tejaswa___?igsh=YzVkODRmOTdmMw%3D%3D",
                  linkedIn:
                      "https://www.linkedin.com/in/tejaswa-mathur-778a65282/?trk=contact-info",
                  mail: "mailto:tejaswa@techkriti.org",
                  image: "assets/images/tejaswa2.jpg"),
              Center(
                child: Text("Finance", style: contactHeading),
              ),
              const contactCard(
                  name: "Ansh Jat",
                  department: "Head, Finance",
                  mobile: "+91 6269628903",
                  facebook: "",
                  insta:
                      "https://www.instagram.com/_anshjat_?igshid=NzZlODBkYWE4Ng%3D%3D",
                  linkedIn: "https://www.linkedin.com/in/ansh-jat-18b227236/",
                  mail: "mailto:ansh@techkriti.org",
                  image: "assets/images/Ansh Jat.jpg"),
              Center(
                child: Text("Security", style: contactHeading),
              ),
              const contactCard(
                  name: "Ankur Maurya",
                  department: "Head, Security",
                  mobile: "+91 6269628903",
                  facebook:
                      "https://www.facebook.com/profile.php?id=100070979832254&mibextid=ZbWKwL",
                  insta:
                      "https://www.instagram.com/ankurmaurya08?igshid=NGVhN2U2NjQ0Yg%3D%3D",
                  linkedIn:
                      "https://www.linkedin.com/in/ankur-maurya-0061a726a/?originalSubdomain=in",
                  mail: "mailto:ankurmaurya@techkriti.org",
                  image: "assets/images/Ankur Maurya.jpg"),
              Center(
                child: Text("Media and Publicity", style: contactHeading),
              ),
              const contactCard(
                  name: "Shrey Sonara",
                  department: "Head, Media and Publicity",
                  mobile: "+91 9898921717",
                  facebook:
                      "https://www.facebook.com/profile.php?id=61550114642066&mibextid=LQQJ4d",
                  insta:
                      "https://www.instagram.com/shrey_sonara?igsh=a3c5b3BtNTdkdGZ3&utm_source=qr",
                  linkedIn: "",
                  mail: "mailto:shrey@techkriti.org",
                  image: "assets/images/Shrey.jpg"),
              Center(
                child: Text("Design", style: contactHeading),
              ),
              const contactCard(
                  name: "Sakshi Patil",
                  department: "Head, Design",
                  mobile: "+91 7898849252",
                  facebook:
                      "https://www.facebook.com/profile.php?id=100075252161006&mibextid=ZbWKwL",
                  insta:
                      "https://www.instagram.com/sakshi_paatil?igshid=NzZlODBkYWE4Ng%3D%3D",
                  linkedIn: "",
                  mail: "mailto:sakshi@techkriti.org",
                  image: "assets/images/Sakshi.jpg"),
              Center(
                child: Text("Show Management", style: contactHeading),
              ),
              const contactCard(
                  name: "Harshit Saini",
                  department: "Head, Show Management",
                  mobile: "+91 9294570649",
                  facebook: "https://www.facebook.com/harshit9617370507",
                  insta: "https://www.instagram.com/_harshittt_._/",
                  linkedIn:
                      "https://www.linkedin.com/in/harshit-saini-30b9b7223/",
                  mail: "mailto:sharshit21@iitk.ac.in",
                  image: "assets/images/Harshit.jpg"),
              const contactCard(
                  name: "Anurag Mandal",
                  department: "Head, Show Management",
                  mobile: "+91 8697010179",
                  facebook: "https://www.facebook.com/anurag.mandal.9828/",
                  insta: "https://www.instagram.com/itz_anurag_mandal/",
                  linkedIn:
                      "https://www.linkedin.com/in/anurag-mandal-a319ba244/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
                  mail: "mailto:anurag@techkriti.org",
                  image: "assets/images/AnuragM.jpg"),
              const Center(
                child: Text("General Secretary, SnT Council",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2)),
              ),
              const contactCard(
                  name: "Arnav Pandey",
                  department:
                      "General Secretary, Science and \n           Technology Council",
                  mobile: "+91 6388798628",
                  facebook:
                      "https://www.facebook.com/arnav.pandey.37853?mibextid=ZbWKwL",
                  insta: "",
                  linkedIn:
                      "https://www.linkedin.com/in/arnavp7/?originalSubdomain=in",
                  mail: "mailto:arnavp20@iitk.ac.in",
                  image: "assets/images/arnavpandey.jpg"),
              Center(
                child: Text("Festival Co-ordinators", style: contactHeading),
              ),
              const contactCard(
                  name: "Anand Maneesh",
                  department: "Festival Coordinator",
                  mobile: "+91 9188493806",
                  facebook:
                      "https://www.facebook.com/anand.maneesh.12?mibextid=ZbWKwL",
                  insta:
                      "https://www.instagram.com/a.nand_maneesh?igshid=OGQ5ZDc2ODk2ZA%3D%3D",
                  linkedIn: "https://www.linkedin.com/in/anand-maneesh/",
                  mail: "mailto:anand@techkriti.org",
                  image: "assets/images/Anand.jpg"),
              const contactCard(
                  name: "Vihan Kochatta",
                  department: "Festival Coordinator",
                  mobile: "+91 7805026139",
                  facebook: "",
                  insta: "https://www.instagram.com/vihankochatta/",
                  linkedIn:
                      "https://www.linkedin.com/in/vihan-kochatta-179606223/",
                  mail: "mailto:vihan@techkriti.org",
                  image: "assets/images/Vihan.jpg"),
            ],
          )),
        ),
      ),
    );
  }
}
