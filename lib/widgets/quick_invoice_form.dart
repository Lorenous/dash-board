import 'package:dash_board/widgets/custom_button.dart';
import 'package:dash_board/widgets/custom_titled_text_feild.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitledTextFeild(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitledTextFeild(
                title: 'Customer email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTitledTextFeild(
                title: 'Item name',
                hintText: 'Type item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitledTextFeild(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backgroundColor: Colors.white,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                backgroundColor: Color(0xff4EB7F2),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
