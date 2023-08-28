import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kurumo_app/models/trader.dart';
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
        name: '/createAccuntPage',
      ),
      builder: (_) => const CreateAccuntPage(),
    );
  }

  @override
  State<CreateAccuntPage> createState() => _CreateAccuntPageState();
}

///このページはUser登録が終わってユーザー情報を登録するページ
///fetchUserするところ。uidと紐付け
class _CreateAccuntPageState extends State<CreateAccuntPage> {
  @override
  Widget build(BuildContext context) {
    final traderCollection = FirebaseFirestore.instance.collection('trader');
    final uid = FirebaseAuth.instance.currentUser!.uid;
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
              onPressed: () async {
                final traderSurName = familyNameController.text;
                final traderPersonalName = personalNameController.text;
                final trader = Trader(
                  traderSurName: traderSurName,
                  traderPersonalName: traderPersonalName,
                );
                await traderCollection
                    .doc(uid)
                    .set(trader.toJson(), SetOptions(merge: true));

                await Navigator.push(context, CreateCompanyPage.route());
              },
              backgroundColor: primary,
              label: "アカウントを作成",
            ),
          ],
        ),
      ),
    );
  }
}
