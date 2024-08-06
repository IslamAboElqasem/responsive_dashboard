import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/select_months.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context),
              ),
              const SelectMonths()
            ],
          )
        ],
      ),
    );
  }
}
