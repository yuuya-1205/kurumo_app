import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';
import 'package:kurumo_app/views/pages/auth/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.defaultTheme,
      home: LoginPage(),
    );
  }
}
