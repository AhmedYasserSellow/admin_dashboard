import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.backgroundColor = const Color(0xffFaFaFa),
    this.imageColor = const Color(0xff4eb7f2),
    this.arrowColor = const Color(
      0xff064061,
    ),
  });
  final String image;
  final Color backgroundColor, imageColor, arrowColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                decoration: ShapeDecoration(
                  color: backgroundColor,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: arrowColor,
          ),
        )
      ],
    );
  }
}
