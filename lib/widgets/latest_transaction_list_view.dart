import 'package:dash_board/models/user_info_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatefulWidget {
  const LatestTransactionListView({super.key});

  @override
  State<LatestTransactionListView> createState() =>
      _LatestTransactionListViewState();
}

class _LatestTransactionListViewState extends State<LatestTransactionListView> {
  final List<UserInfoModel> userItems = const [
    UserInfoModel(
      image: AppImages.frame,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: AppImages.frame2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: AppImages.frame,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userItems
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
