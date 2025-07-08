import 'package:flutter/material.dart';
import 'package:my_app/views/pages/login_page.dart';
import 'package:my_app/views/widgets/hero_widget2.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: HeroWidget2()),
            FittedBox(
              child: Text(
                "FlutterMapp",
                style: TextStyle(
                  color: Colors.teal[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(
                        seconds: 1,
                      ), // 👈 Faster animation here
                      pageBuilder: (_, __, ___) => LoginPageApp(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.black,
                ),
                child: Text("Login"),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPageApp();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[50],
                  foregroundColor: Colors.black,
                ),
                child: Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
