import 'package:flutter/material.dart';
import 'package:kurumo_app/views/pages/provisional_reservation_detail.dart';

class ProvisionalReservation extends StatelessWidget {
  const ProvisionalReservation({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/provisional_reservation',
      ),
      builder: (_) => const ProvisionalReservation(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('仮予約一覧ページ'),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, ProvisionalReservationDetail.route());
            },
            child: const Text('詳細ページ画面遷移テスト')),
      ],
    );
  }
}
