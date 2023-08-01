import 'package:flutter/material.dart';
import 'package:kurumo_app/views/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        /// [AndroidのAppBarのタイトルを中央寄せにする]
        appBarTheme: const AppBarTheme(
          centerTitle: true
        ),
      ),
      home: LoginPage(),
    );
  }
}