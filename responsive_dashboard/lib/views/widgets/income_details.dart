import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        title: 'Design service', value: '40%', color: Color(0xFF208CC8)),
    ItemDetailsModel(
        title: 'Design product', value: '25%', color: Color(0xFF4EB7F2)),
    ItemDetailsModel(
        title: 'Product royalti', value: '20%', color: Color(0xFF064061)),
    ItemDetailsModel(title: 'Other', value: '22%', color: Color(0xFFE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => ItemDetails(
        itemDetailsModel: items[index],
      ),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: itemDetailsModel.color),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
