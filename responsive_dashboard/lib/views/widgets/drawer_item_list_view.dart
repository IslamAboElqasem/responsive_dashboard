import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utilis/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
  });
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DrawerItem(
          drawerItemModel: DrawerItemModel(
              title: items[index].title, image: items[index].image),
        );
      },
    );
  }
}
