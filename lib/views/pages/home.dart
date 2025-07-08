import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/views/widgets/hero_widget.dart';
import 'package:my_app/views/widgets/home_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardList = [
      KHomeCard.keyConcept,
      KHomeCard.basicLayout,
      KHomeCard.cleanUI,
      KHomeCard.fixBugs,
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(),
            ...List.generate(cardList.length, (index) {
              return HomeCardWidget(title: cardList.elementAt(index));
            }),
          ],
        ),
      ),
    );
  }
}
