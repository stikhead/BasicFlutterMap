import 'package:flutter/material.dart';
import 'package:my_app/views/widget_tree.dart';
import 'package:my_app/views/widgets/hero_widget2.dart';

class LoginPageApp extends StatefulWidget {
  const LoginPageApp({super.key});

  @override
  State<LoginPageApp> createState() => _LoginPageAppState();
}

class _LoginPageAppState extends State<LoginPageApp> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPwd = TextEditingController();
  String confirmEmail = '123';
  String confirmPwd = '123';
  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPwd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Expanded(child: HeroWidget2())],
            ),
          ),
          Align(
            alignment:
                Alignment.bottomCenter, // 👈 Horizontal center + bottom aligned
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 100,
              ), // 👈 Space from bottom
              child: Container(
                width: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 10.0),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      controller: controllerEmail,
                      onEditingComplete: () {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 14),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      controller: controllerPwd,
                      onEditingComplete: () {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        onLogin();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40),
                      ),
                      child: Text('Login'),
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

  void onLogin() {
    if (confirmEmail == controllerEmail.text &&
        confirmPwd == controllerPwd.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    }
  }
}
