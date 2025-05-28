import 'package:dash_board/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(AppImages.maskGroup),
          ),
        ),
      ),
    );
  }
}
