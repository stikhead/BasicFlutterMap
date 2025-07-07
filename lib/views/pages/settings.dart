import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isCheck = false;
  bool isSwitch = false;
  double sliderValue = 0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: CloseButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Snackbar"),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 5),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Snackbar"),
              ),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(context: context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("About Dialog"),
              ),
              Divider(color: Colors.teal, thickness: 2.0, endIndent: 100.0),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("title"),
                        content: Text("Modifiable"),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Alert Dialog"),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text("1")),
                  DropdownMenuItem(value: 'e2', child: Text("2")),
                  DropdownMenuItem(value: 'e3', child: Text("3")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),

              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isCheck,
                onChanged: (bool? value) {
                  setState(() {
                    isCheck = value;
                  });
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: Text("click"),
                value: isCheck,
                onChanged: (bool? value) {
                  setState(() {
                    isCheck = value;
                  });
                },
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    isSwitch = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text("Switch me"),
                value: isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    isSwitch = value;
                  });
                },
              ),
              Slider(
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  //   print("selected");
                },
                child: Image.asset('assets/images/download.jpg'),
              ),
              InkWell(
                splashColor: Colors.white70,
                hoverColor: Colors.amber,
                onTap: () {
                  //  print("selected");
                },
                child: SizedBox(
                  height: 300.0,
                  width: double.infinity,
                  child: Image.asset('assets/images/download.jpg'),
                ),
              ),

              ElevatedButton(onPressed: () {}, child: Text("click me")),
              FilledButton(onPressed: () {}, child: Text("Click me")),
              OutlinedButton(onPressed: () {}, child: Text("Click me")),
              TextButton(onPressed: () {}, child: Text("Click me")),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
