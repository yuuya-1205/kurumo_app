import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
