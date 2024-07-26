import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_and_quick_invoice.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: CustomDrawer(),
      ),
      SizedBox(
        width: 32,
      ),
      Expanded(
        flex: 2,
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: AllExpencesAndQuickInvoice(),
          )
        ]),
      ),
      SizedBox(
        width: 24,
      ),
      Expanded(child: MyCardPageView())
    ]);
  }
}
