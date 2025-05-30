import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:dash_board/widgets/latest_transaction.dart';
import 'package:dash_board/widgets/quick_invoice_form.dart';
import 'package:dash_board/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(color: Color(0xffF1F1F1), height: 48),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
