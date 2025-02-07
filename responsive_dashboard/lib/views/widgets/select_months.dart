import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';

class SelectMonths extends StatelessWidget {
  const SelectMonths({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1))),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}
