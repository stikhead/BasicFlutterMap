import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/data/notifiers.dart';
import 'package:my_app/views/pages/home.dart';
import 'package:my_app/views/pages/notification.dart';
import 'package:my_app/views/pages/profile.dart';
import 'package:my_app/views/pages/settings.dart';
import 'package:my_app/views/widgets/navbar_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage(), NotificationWidget()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () async {
              currentBrightnessDark.value = !currentBrightnessDark.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool(
                KConstants.themeModeKey,
                currentBrightnessDark.value,
              );
            },
            icon: ValueListenableBuilder(
              valueListenable: currentBrightnessDark,
              builder: (context, isDark, child) {
                return isDark ? Icon(Icons.dark_mode) : Icon(Icons.light_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: "Settings2");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
