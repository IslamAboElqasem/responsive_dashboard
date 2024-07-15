import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
