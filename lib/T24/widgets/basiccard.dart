import 'package:flutter/material.dart';

class CustomCardShapeBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(0.0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(rect.topLeft.dx, rect.topLeft.dy + 20) // Move to the top-left corner + 20
      ..lineTo(rect.bottomLeft.dx + 20, rect.bottomLeft.dy) // Line to the bottom-left corner + 20
      ..lineTo(rect.bottomRight.dx, rect.bottomRight.dy)
      ..lineTo(rect.topRight.dx, rect.topRight.dy)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}
  
  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }
}

class CardTest extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String imagePath;
  final String personName; // New required field for person's name

  const CardTest({
    Key? key,
    required this.name,
    required this.phoneNumber,
    required this.imagePath,
    required this.personName, // Add the new required parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Card(
        elevation: 10.0,
        shape: CustomCardShapeBorder(),
        color: Colors.transparent, // Set the color to transparent
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 14),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 324,
                height: 160.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover, // Cover the entire square area
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      personName, // Use the new parameter for person's name
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Center(
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        'Phone- $phoneNumber',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
