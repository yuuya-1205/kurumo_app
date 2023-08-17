import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kurumo_app/util/color.dart';
import 'package:kurumo_app/views/components/button.dart';
import 'package:kurumo_app/views/components/input_form.dart';
import 'package:kurumo_app/views/home_page.dart';
import 'package:kurumo_app/views/pages/auth/register_select_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/login',
      ),
      builder: (_) => const LoginPage(),
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage = '';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(
                  height: 56,
                ),
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
                  height: 16,
                ),
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'パスワード忘れ',
                ),
                const SizedBox(
                  height: 32,
                ),
                Button(
                  onPressed: () async {
                    final email = emailController.text;
                    final password = passwordController.text;
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    try {
                      ///repositoryパターンで使うこと。
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      // ignore: use_build_context_synchronously

                      Navigator.push(context, HomePage.route());
                    } on FirebaseAuthException catch (e) {
                      switch (e.code) {
                        case 'wrong-password':
                          errorMessage = 'パスワードが間違っています';
                          break;
                        case 'user-not-found':
                          errorMessage = 'メールアドレスが登録されていません';
                          break;
                        case 'invalid-email':
                          errorMessage = 'メールアドレスを入力してください';
                          break;
                        case 'too-many-requests':
                          errorMessage = 'パスワードを再設定してください';
                          break;
                      }
                    }
                  },
                  backgroundColor: primary,
                  text: "ログイン",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'または',
                ),
                const SizedBox(
                  height: 32,
                ),
                Button(
                  onPressed: () {},
                  backgroundColor: primary,
                  text: "Google",
                ),
                const SizedBox(
                  height: 18,
                ),
                Button(
                  onPressed: () {},
                  backgroundColor: primary,
                  text: "Apple",
                ),
                const SizedBox(
                  height: 74,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, RegisterSelectPage.route());
                  },
                  child: const Text(
                    '新規登録',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
