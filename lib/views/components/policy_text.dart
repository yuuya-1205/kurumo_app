import 'package:flutter/material.dart';

class PolicyText extends StatelessWidget {
  const PolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: '登録することで、',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          TextSpan(
            text: 'プライバシーポリシー',
            style: TextStyle(
              fontSize: 10,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' と',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          TextSpan(
            text: '利用規約',
            style: TextStyle(
              fontSize: 10,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' に同意したことになります',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
