import 'package:dash_board/widgets/all_expenses_header.dart';
import 'package:dash_board/widgets/all_expenses_items_list_view.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
