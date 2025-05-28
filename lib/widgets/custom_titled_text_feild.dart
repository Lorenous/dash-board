import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitledTextFeild extends StatelessWidget {
  final String title, hintText;
  const CustomTitledTextFeild({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(height: 12),
        TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            hintText: hintText,
            hintStyle: AppStyles.styleRegular16
                .copyWith(color: const Color(0xffAAAAAA)),
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffFAFAFA),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffFAFAFA),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
