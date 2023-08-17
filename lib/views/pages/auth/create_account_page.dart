import 'package:flutter/material.dart';
import 'package:kurumo_app/util/color.dart';
import 'package:kurumo_app/views/components/button.dart';
import 'package:kurumo_app/views/components/input_form.dart';
import 'package:kurumo_app/views/components/policy_text.dart';
import 'package:kurumo_app/views/pages/auth/create_company_page.dart';

class CreateAccuntPage extends StatefulWidget {
  const CreateAccuntPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/registerSendEmailPage',
      ),
      builder: (_) => const CreateAccuntPage(),
    );
  }

  @override
  State<CreateAccuntPage> createState() => _CreateAccuntPageState();
}

class _CreateAccuntPageState extends State<CreateAccuntPage> {
  @override
  Widget build(BuildContext context) {
    final familyNameController = TextEditingController();
    final personalNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 63,
            ),
            Row(
              children: [
                Flexible(
                  child: InputForm(
                    controller: familyNameController,
                    hintText: "苗字",
                    labelText: "苗字",
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: InputForm(
                    controller: personalNameController,
                    hintText: "名前",
                    labelText: "名前",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 318,
            ),
            const PolicyText(),
            const SizedBox(
              height: 22,
            ),
            Button(
              width: double.infinity,
              onPressed: () {
                Navigator.push(context, CreateCompanyPage.route());
              },
              backgroundColor: primary,
              text: "アカウントを作成",
            ),
          ],
        ),
      ),
    );
  }
}
