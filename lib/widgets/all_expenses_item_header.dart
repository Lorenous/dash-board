import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  const AllExpensesItemHeader({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xffFAFAFA),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff064060),
          size: 24,
        ),
      ],
    );
  }
}
