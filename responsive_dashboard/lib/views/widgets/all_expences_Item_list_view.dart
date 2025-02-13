import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_item_model.dart';
import 'package:responsive_dashboard/utilis/app_images.dart';
import 'package:responsive_dashboard/views/widgets/expences_item.dart';

class AllExpencesItemListView extends StatefulWidget {
  const AllExpencesItemListView({super.key});

  static const items = [
    AllExpencesItemModel(
        date: 'April 2022',
        image: Assets.imagesIncome,
        price: r'$20.129',
        title: 'Income'),
    AllExpencesItemModel(
        date: 'April 2022',
        image: Assets.imagesExpenses,
        price: r'$20.129',
        title: 'Expense'),
    AllExpencesItemModel(
        date: 'April 2022',
        image: Assets.imagesBalance,
        price: r'$20.129',
        title: 'Balance'),
  ];

  @override
  State<AllExpencesItemListView> createState() =>
      _AllExpencesItemListViewState();
}

class _AllExpencesItemListViewState extends State<AllExpencesItemListView> {
  int activeExpences = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpencesItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (activeExpences != index) {
                  setState(() {
                    activeExpences = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ExpensesItem(
                  allExpencesItemModel: item,
                  isSelected: index == activeExpences,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (activeExpences != index) {
                  setState(() {
                    activeExpences = index;
                  });
                }
              },
              child: ExpensesItem(
                allExpencesItemModel: item,
                isSelected: index == activeExpences,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
