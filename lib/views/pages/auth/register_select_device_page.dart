import 'package:flutter/material.dart';
import 'package:kurumo_app/util/color.dart';
import 'package:kurumo_app/views/components/button.dart';
import 'package:kurumo_app/views/components/button_list_tile.dart';

import 'register_send_email_page.dart';

class RegisterSelectDevicePage extends StatefulWidget {
  const RegisterSelectDevicePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/registerSelectDevicePage',
      ),
      builder: (_) => const RegisterSelectDevicePage(),
    );
  }

  @override
  State<RegisterSelectDevicePage> createState() =>
      _RegisterSelectDevicePageState();
}

class _RegisterSelectDevicePageState extends State<RegisterSelectDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 194,
            ),
            Button(
              width: double.infinity,
              onPressed: () {
                Navigator.push(context, RegisterSendEmailPage.route());
              },
              backgroundColor: primary,
              label: "メールアドレスで続ける",
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("または"),
            const SizedBox(
              height: 27,
            ),
            ButtonListTile(
              label: 'Googleでログイン',
              leadingAssetPath: 'assets/images/google.png',
              onTap: () {},
            ),
            const SizedBox(
              height: 18,
            ),
            ButtonListTile(
              label: 'Appleでログイン',
              leadingAssetPath: 'assets/images/apple_copy.png',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
