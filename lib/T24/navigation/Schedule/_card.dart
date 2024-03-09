// import 'package:flutter/material.dart';
// import 'package:techkriti/T24/navigation/Schedule/datamodel.dart';

// class CardWidget extends StatelessWidget {
//   final CardData cardData;

//   const CardWidget({Key? key, required this.cardData}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.transparent,
//       elevation: 0,
//       margin: const EdgeInsets.all(5.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18.0),
//         side: const BorderSide(
//           color: Colors.white,
//           width: 1.5,
//         ),
//       ),
//       child: ListTile(
//         title: Text(
//           cardData.event,
//           style: const TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         subtitle: Text(
//           cardData.venue,
//           style: const TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:techkriti/T24/constants/colors_and_fonts.dart';
import 'package:techkriti/T24/navigation/Schedule/datamodel.dart';

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      margin: const EdgeInsets.all(5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left column with event and venue
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardData.event,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: headingFont,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.33),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    cardData.venue,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),
            // Right column with time
            Text(
              cardData.time,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
