import 'package:dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/my_card.dart';
import 'package:flutter/material.dart';

class DashboardDisktopLayoutWidget extends StatelessWidget {
  const DashboardDisktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 42),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 42, bottom: 42, right: 32),
            child: Column(
              children: [
                CustomBackgroundContainer(
                  padding: 24,
                  child: Column(
                    children: [
                      MyCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
