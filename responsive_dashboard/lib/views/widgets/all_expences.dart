import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_item_list_view.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpencesItemListView()
        ],
      ),
    );
  }
}
