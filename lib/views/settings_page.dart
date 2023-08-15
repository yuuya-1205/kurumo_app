import 'package:flutter/material.dart';
import 'package:kurumo_app/views/components/setting_page/setting_page_body.dart';

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
    return const Scaffold(
      body: SettingPageBody(),
    );
  }
}
