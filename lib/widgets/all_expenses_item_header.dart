import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final Color imageBackgroundColor, iconColor, imageColor;
  final String image;
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.imageBackgroundColor,
    required this.iconColor,
    required this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: imageBackgroundColor,
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor,
          size: 24,
        ),
      ],
    );
  }
}
