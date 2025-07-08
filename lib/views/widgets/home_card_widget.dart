import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: KTextStyle.titleStyleCard),
              Text("The description", style: KTextStyle.descriptionStyleCard),
            ],
          ),
        ),
      ),
    );
  }
}
