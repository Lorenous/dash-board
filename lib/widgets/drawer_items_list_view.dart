import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(title: 'Dashboard', image: AppImages.category2),
    DrawerItemModel(title: 'My Transaction', image: AppImages.convertCard),
    DrawerItemModel(title: 'Statistics', image: AppImages.graph),
    DrawerItemModel(title: 'Wallet Account', image: AppImages.wallet2),
    DrawerItemModel(title: 'My Investments', image: AppImages.chart2),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: DrawerItem(
                isActive: activeIndex == index,
                drawerItemModel: drawerItems[index],
              ),
            ),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: drawerItems.length);
  }
}
