import 'package:flutter/material.dart';

class KariYoyakuPage extends StatelessWidget {
  const KariYoyakuPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/kari_yoyaku',
      ),
      builder: (_) => const KariYoyakuPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('仮予約一覧ページ'),
      ],
    );
  }
}
