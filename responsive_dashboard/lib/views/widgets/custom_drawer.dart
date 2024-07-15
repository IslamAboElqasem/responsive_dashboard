import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utilis/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_list_view.dart';

import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar1,
            subtitle: 'demo@gmail.com',
            title: 'Lekan Okeowo',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
