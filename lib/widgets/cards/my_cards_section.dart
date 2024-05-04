import 'package:admin_dashboard/models/card_model.dart';
import 'package:admin_dashboard/utils/app_icons.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/cards/custom_dots_indicator.dart';
import 'package:admin_dashboard/widgets/cards/my_cards_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });

    super.initState();
  }

  final List<CardModel> myCards = const [
    CardModel(
      month: 10,
      name: 'Ahmed Yasser',
      number: '0918 8124 0042 8129',
      type: Assets.imagesMasterCard,
      year: 24,
      cvv: 111,
    ),
    CardModel(
      month: 10,
      name: 'Ahmed Yasser',
      number: '0918 8124 0042 8129',
      type: Assets.imagesVisa,
      year: 24,
      cvv: 111,
    ),
    CardModel(
      month: 10,
      name: 'Ahmed Yasser',
      number: '0918 8124 0042 8129',
      type: Assets.imagesMasterCard,
      year: 24,
      cvv: 111,
    ),
    CardModel(
      month: 10,
      name: 'Ahmed Yasser',
      number: '0918 8124 0042 8129',
      type: Assets.imagesVisa,
      year: 24,
      cvv: 111,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsView(
          myCards: myCards,
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomDotsIndicator(
          itemCount: myCards.length,
          currentIndex: currentPageIndex,
        ),
      ],
    );
  }
}
