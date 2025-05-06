import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/drawer_item.dart';
import 'package:dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: AppImages.category2),
    DrawerItemModel(title: 'My Transaction', image: AppImages.convertCard),
    DrawerItemModel(title: 'Statistics', image: AppImages.graph),
    DrawerItemModel(title: 'Wallet Account', image: AppImages.wallet2),
    DrawerItemModel(title: 'My Investments', image: AppImages.chart2),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: AppImages.frame3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          const SizedBox(height: 28),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  DrawerItem(drawerItemModel: drawerItems[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: drawerItems.length),
        ],
      ),
    );
  }
}
