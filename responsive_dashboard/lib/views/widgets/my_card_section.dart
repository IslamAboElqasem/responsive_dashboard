import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utilis/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 420,
          child: Text('My card', style: AppStyles.styleSemiBold20(context)),
        ),
        const SizedBox(height: 20),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 19),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
