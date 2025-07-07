import 'package:flutter/material.dart';
import 'package:my_app/views/widgets/hero_widget2.dart';

class LoginPageApp extends StatelessWidget {
  const LoginPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Expanded(child: HeroWidget2())]),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              width: 300,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(decoration: InputDecoration(labelText: 'Username')),
                  SizedBox(height: 12),
                  TextField(decoration: InputDecoration(labelText: 'Password')),
                  SizedBox(height: 12),
                  ElevatedButton(onPressed: () {}, child: Text('Login')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
