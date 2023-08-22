import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';

class VendorInfo extends StatelessWidget {
  const VendorInfo({
    required this.phoneNumber,
    required this.address,
    required this.paymentMethod,
    super.key,
  });

  final String phoneNumber;
  final String address;
  final String paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('お問い合わせ'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.accentColor,
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 16,
                    ),
                  ),
                  onPressed: () {
                    //TODO: 電話をかける
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        phoneNumber,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Themes.grayColor[200],
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text('お支払い方法'),
            trailing: Text(
              paymentMethod,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Container(
            height: 1,
            color: Themes.grayColor[200],
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text('住所'),
            trailing: MaterialButton(
              onPressed: () {
                //TODO: 地図を開く
              },
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      address,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
