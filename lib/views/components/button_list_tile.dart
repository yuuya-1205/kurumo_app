import 'package:flutter/material.dart';

class ButtonListTile extends StatelessWidget {
  const ButtonListTile({
    super.key,
    this.onTap,
    required this.label,
    required this.leadingAssetPath,
  });
  final VoidCallback? onTap;
  final String label;
  final String leadingAssetPath;

  @override
  Widget build(BuildContext context) {
    const iconSize = 24.0;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xffeeeeee), spreadRadius: 1, blurRadius: 20),
          ],
        ),
        height: 60,
        width: double.infinity,
        // ListTile だと 文字が中央にならないので Column と Stack を使う
        child: Stack(
          children: [
            Row(children: [
              const SizedBox(height: double.infinity, width: iconSize),
              SizedBox(
                height: double.infinity,
                width: iconSize,
                child: Image.asset(leadingAssetPath),
              ),
            ]),
            Center(
                child: Text(
              label,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
