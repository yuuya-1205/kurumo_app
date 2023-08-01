import 'package:flutter/material.dart';

class ReserveListPage extends StatelessWidget {
  const ReserveListPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/reserve_list',
      ),
      builder: (_) => const ReserveListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('予約一覧ページ'),
      ],
    );
  }
}
