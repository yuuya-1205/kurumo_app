import 'package:flutter/material.dart';
import 'package:kurumo_app/views/pages/review/review_body.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/history',
      ),
      builder: (_) => const HistoryPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReviewBody(),
    );
  }
}
