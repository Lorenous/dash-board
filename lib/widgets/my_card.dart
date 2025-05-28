import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(height: 20),
        AspectRatio(
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
        ),
      ],
    );
  }
}
