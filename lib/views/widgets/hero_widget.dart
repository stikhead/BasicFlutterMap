import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero1",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19.0),
        child: Image.asset(
          'assets/images/download.jpg',
          color: Colors.teal,
          colorBlendMode: BlendMode.modulate,
        ),
      ),
    );
  }
}
