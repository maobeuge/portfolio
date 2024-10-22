import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PhoneDisplay extends StatelessWidget {
  const PhoneDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 640, maxWidth: 320),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(.1),
                    offset: const Offset(0, 0),
                    blurRadius: 25,
                    spreadRadius: 15,
                  ),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: double.infinity,
                  viewportFraction: 1,
                ),
                items: [
                  Image.asset(
                    "assets/fms.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/fe_journey.png",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/jobmatchr.PNG",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            "assets/mockup.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
