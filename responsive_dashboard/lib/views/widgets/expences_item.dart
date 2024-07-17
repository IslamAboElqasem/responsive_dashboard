import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_expences_item.dart';
import 'package:responsive_dashboard/views/widgets/in_active_expences_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key,
      required this.allExpencesItemModel,
      required this.isSelected});
  final bool isSelected;
  final AllExpencesItemModel allExpencesItemModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpencesItem(allExpencesItemModel: allExpencesItemModel)
        : InActiveExpencesItem(allExpencesItemModel: allExpencesItemModel);
  }
}
