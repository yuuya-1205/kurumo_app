import 'package:flutter/material.dart';
import 'package:kurumo_app/views/sign_up_page.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/login',
      ),
      builder: (_) => const LoginPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ログインページ'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, HomePage.route());
              },
              child: const Text('ログイン'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, SignUpPage.route());
              },
              child: const Text('新規登録'),
            ),
          ],
        ),
      ),
    );
  }
}
