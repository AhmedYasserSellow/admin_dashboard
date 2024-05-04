import 'package:admin_dashboard/models/card_model.dart';
import 'package:admin_dashboard/widgets/cards/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsView extends StatelessWidget {
  const MyCardsView({
    super.key,
    required this.pageController,
    required this.myCards,
  });
  final PageController pageController;
  final List<CardModel> myCards;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: myCards
          .map((e) => MyCard(
                cardModel: e,
              ))
          .toList(),
    );
  }
}
