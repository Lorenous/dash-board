import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(drawerItemModel: drawerItemModel)
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16,
      ),
      trailing: const VerticalDivider(
        color: Color(0xff4EB7F2),
        thickness: 3,
      ),
    );
  }
}
