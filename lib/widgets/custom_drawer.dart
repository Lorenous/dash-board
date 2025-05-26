import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/drawer_item.dart';
import 'package:dash_board/widgets/drawer_items_list_view.dart';
import 'package:dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    image: AppImages.frame3,
                    title: 'Lekan Okeowo',
                    subTitle: 'demo@gmail.com'),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 28)),
            DrawerItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: AppImages.setting2),
                  ),
                  InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: AppImages.logout),
                  ),
                  SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
