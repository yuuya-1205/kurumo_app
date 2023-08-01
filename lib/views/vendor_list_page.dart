import 'package:flutter/material.dart';

class VendorListPage extends StatelessWidget {
  const VendorListPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/vendor_list_page',
      ),
      builder: (_) => const VendorListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('業者一覧ページ'),
          ],
        ),
      ),
    );
  }
}
