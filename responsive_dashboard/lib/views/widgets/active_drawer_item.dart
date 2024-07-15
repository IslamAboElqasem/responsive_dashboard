import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        drawerItemModel.image,
        color: const Color(0xFF4EB7F2),
      ),
      title: Text(drawerItemModel.title, style: AppStyles.styleBold16(context)),
      trailing: Container(
        width: 3.27,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }
}
