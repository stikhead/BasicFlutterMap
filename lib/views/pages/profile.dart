import 'package:flutter/material.dart';
import 'package:my_app/data/notifiers.dart';
import 'package:my_app/views/pages/welcome.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isCheck = false;
  bool isSwitch = false;
  double sliderValue = 0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  selectedPageNotifier.value = 0;
                  return WelcomePage();
                },
              ),
            );
          },
          title: Text("logout"),
        ),
      ],
    );
  }
}
