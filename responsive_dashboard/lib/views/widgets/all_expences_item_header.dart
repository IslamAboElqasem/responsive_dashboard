import 'package:flutter/material.dart';

class AllExpencesItemHeader extends StatelessWidget {
  const AllExpencesItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor});

  final String image;
  final Color? imageBackgroundColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
                color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
                shape: const OvalBorder()),
            child: Image.asset(
              image,
              color: imageColor ?? const Color(0xFF4EB7F2),
            )),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          angle: 3.14159265,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xFF064061) : Colors.white,
          ),
        )
      ],
    );
  }
}
