import 'package:dash_board/widgets/all_expenses.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
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
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 42),
            child: Column(
              children: [
                AllExpenses(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
