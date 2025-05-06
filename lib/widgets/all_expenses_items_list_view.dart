import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: AppImages.moneys,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: AppImages.cardReceive,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: AppImages.cardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: e.key == 1 ? 12 : 0),
            child: GestureDetector(
              onTap: () {
                if (activeIndex != e.key) {
                  setState(() {
                    activeIndex = e.key;
                  });
                }
              },
              child: AllExpensesItem(
                isActive: activeIndex == e.key,
                allExpensesItemModel: e.value,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
