import 'package:flutter/material.dart';

class AllExpencesItemHeader extends StatelessWidget {
  const AllExpencesItemHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: const ShapeDecoration(
                color: Color(0xFFFAFAFA), shape: OvalBorder()),
            child: Image.asset(image)),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          angle: 3.14159265,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        )
      ],
    );
  }
}
