import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF1F1F1),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(width: 16),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff064060),
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
