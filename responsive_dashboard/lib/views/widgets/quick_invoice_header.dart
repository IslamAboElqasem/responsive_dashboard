import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Text(
            'Quick Invoice',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          Container(
            height: 48,
            width: 48,
            decoration: const ShapeDecoration(
                color: Color(0xffFAFAFA), shape: OvalBorder()),
            child: const Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
            ),
          )
        ],
      ),
    );
  }
}
