import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expences.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

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
            child: Column(
              children: [
                AllExpences(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice()
              ],
            ),
          )
        ]),
      )
    ]);
  }
}
