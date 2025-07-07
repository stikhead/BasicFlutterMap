import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Basic Layout", style: KTextStyle.titleStyleCard),
                    Text(
                      "the description",
                      style: KTextStyle.descriptionStyleCard,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
