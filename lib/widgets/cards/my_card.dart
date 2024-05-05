import 'package:admin_dashboard/models/card_model.dart';
import 'package:admin_dashboard/utils/app_icons.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          padding: const EdgeInsets.only(
            left: 30,
            right: 45,
            top: 20,
            // bottom: 28,
          ),
          decoration: ShapeDecoration(
            color: const Color(0xff4EB7F2),
            image: const DecorationImage(
              image: AssetImage(
                Assets.imagesCardBackground,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CardHeader(
                cardModel: cardModel,
              ),
              const Spacer(),
              Text(
                cardModel.number,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
              Text(
                '${cardModel.month}/${cardModel.year} - ${cardModel.cvv}',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Card Name',
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: Colors.white),
            ),
            Text(
              cardModel.name,
              style: AppStyles.styleMedium20(context),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(
          cardModel.type,
          height: 56,
        ),
      ],
    );
  }
}
