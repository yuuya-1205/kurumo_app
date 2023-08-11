import 'package:flutter/material.dart';
import 'package:kurumo_app/views/components/button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/setting',
      ),
      builder: (_) => const SettingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('設定ページ'),
            
          ],
        ),
      ),
    );
  }
}
