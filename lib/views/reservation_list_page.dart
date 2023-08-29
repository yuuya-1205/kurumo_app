import 'package:flutter/material.dart';

class ReservationListPage extends StatelessWidget {
  const ReservationListPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/reserve_list',
      ),
      builder: (_) => const ReservationListPage(),
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
