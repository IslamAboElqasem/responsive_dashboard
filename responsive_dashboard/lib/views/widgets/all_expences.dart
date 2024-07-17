import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_Item_list_view.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
            color: const Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: const Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),
            AllExpencesItemListView()
          ],
        ),
      ),
    );
  }
}
