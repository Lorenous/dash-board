import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/widgets/card_indicator.dart';
import 'package:dash_board/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(height: 20),
        CustomCard(),
        SizedBox(height: 19),
        CardIndicator()
      ],
    );
  }
}
