import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expences.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpencesAndQuickInvoice extends StatelessWidget {
  const AllExpencesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpences(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
