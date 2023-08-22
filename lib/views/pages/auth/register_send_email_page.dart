import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kurumo_app/views/components/button.dart';
import 'package:kurumo_app/views/components/input_form.dart';
import 'package:kurumo_app/views/pages/auth/create_account_page.dart';

import '../../../util/color.dart';

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
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InputForm(
                  controller: emailController,
                  hintText: "メールアドレス",
                  labelText: "メールアドレス",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'メールアドレスを入力してください';
                    }
                    final regex = RegExp(
                        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
                    if (!regex.hasMatch(value)) {
                      return 'メールアドレスを入力してください';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                InputForm(
                  controller: passwordController,
                  suffixIcon: Icons.hide_source_outlined,
                  hintText: "パスワード",
                  labelText: "パスワード",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'パスワードを入力してください';
                    }
                    final regex = RegExp(r"^(?=.*[A-Z])[a-zA-Z0-9.?/-]{6,24}$");
                    if (!regex.hasMatch(value)) {
                      return '大文字含めたアルファベット6文字以上24文字以下のパスワードにしてください';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                InputForm(
                  suffixIcon: Icons.hide_source_outlined,
                  hintText: "確認パスワード",
                  labelText: "確認パスワード",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'パスワードを入力してください';
                    }
                    final regex = RegExp(r"^(?=.*[A-Z])[a-zA-Z0-9.?/-]{6,24}$");
                    if (!regex.hasMatch(value)) {
                      return '大文字含めたアルファベット6文字以上24文字以下のパスワードにしてください';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 200,
                ),
                Button(
                  ///TODOメール確認ロジックを作成
                  text: '新規登録',
                  backgroundColor: primary,
                  onPressed: () async {
                    final email = emailController.text;
                    final password = passwordController.text;
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email, password: password);
                    await Navigator.push(context, CreateAccuntPage.route());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
