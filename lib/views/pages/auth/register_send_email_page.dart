import 'package:flutter/material.dart';
import 'package:kurumo_app/views/components/button.dart';
import 'package:kurumo_app/views/pages/auth/create_account_page.dart';

class RegisterSendEmailPage extends StatefulWidget {
  const RegisterSendEmailPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/registerSendEmailPage',
      ),
      builder: (_) => const RegisterSendEmailPage(),
    );
  }

  @override
  State<RegisterSendEmailPage> createState() => _RegisterSendEmailPageState();
}

class _RegisterSendEmailPageState extends State<RegisterSendEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Button(
              text: '',
              onPressed: () {
                Navigator.push(context, CreateAccuntPage.route());
              },
            )
          ],
        ),
      ),
    );
  }
}
