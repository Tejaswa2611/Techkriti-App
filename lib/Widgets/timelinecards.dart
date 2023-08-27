import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'carouselcard.dart';

class TimelineCard extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  const TimelineCard(
      {super.key, required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => CustomCard2(
            image: const AssetImage('assets/images/black.jpg'),
            onTap: () {},
            text: '',
          ), // Replace CustomCard2 with appropriate widget for error case
        ),
      ),
    );
  }
}
