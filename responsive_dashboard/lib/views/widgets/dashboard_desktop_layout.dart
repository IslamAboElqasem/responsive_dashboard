import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_and_quick_invoice.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history.dart';

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
      Expanded(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          MyCardAndTransactionHistory()
        ],
      ))
    ]);
  }
}
