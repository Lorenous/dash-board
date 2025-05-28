import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardIndicator extends StatelessWidget {
  const CardIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: PageController(), // PageController
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: Color(0xff4EB7F2),
          dotColor: Color(0xffE8E8E8),
          dotHeight: 8,
          dotWidth: 8,
        ), // your preferred effect
        onDotClicked: (index) {});
  }
}
