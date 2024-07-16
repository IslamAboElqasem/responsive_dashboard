import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_item_model.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expences_item_header.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.allExpencesItemModel});
  final AllExpencesItemModel allExpencesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpencesItemHeader(
            image: allExpencesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpencesItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpencesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpencesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
