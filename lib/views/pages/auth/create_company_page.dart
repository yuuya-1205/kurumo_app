import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kurumo_app/models/company.dart';
import 'package:kurumo_app/util/color.dart';
import 'package:kurumo_app/views/components/button.dart';
import 'package:kurumo_app/views/components/input_form.dart';
import 'package:kurumo_app/views/components/policy_text.dart';
import 'package:kurumo_app/views/home_page.dart';

class CreateCompanyPage extends StatefulWidget {
  const CreateCompanyPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/createCompanyPage',
      ),
      builder: (_) => const CreateCompanyPage(),
    );
  }

  @override
  State<CreateCompanyPage> createState() => _CreateCompanyPageState();
}

class _CreateCompanyPageState extends State<CreateCompanyPage> {
  @override
  Widget build(BuildContext context) {
    final companyNameController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final postCodeController = TextEditingController();
    final addressController = TextEditingController();
    final buildingNameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("入力した会社はお客様側に表示されます"),
            const SizedBox(
              height: 63,
            ),
            InputForm(
              controller: companyNameController,
              hintText: "会社名",
              labelText: "会社名",
            ),
            const SizedBox(
              height: 16,
            ),
            InputForm(
              controller: phoneNumberController,
              hintText: "連絡先",
              labelText: "連絡先",
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Text("郵便番号"),
                const SizedBox(
                  width: 28,
                ),
                Flexible(
                  child: InputForm(
                    controller: postCodeController,
                    hintText: "〒",
                    labelText: "〒",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            InputForm(
              controller: addressController,
              hintText: "住所",
              labelText: "住所",
            ),
            const SizedBox(
              height: 16,
            ),
            InputForm(
              controller: buildingNameController,
              hintText: "建物名",
              labelText: "建物名",
            ),
            const SizedBox(
              height: 131,
            ),
            const PolicyText(),
            const SizedBox(
              height: 22,
            ),
            Button(
              width: double.infinity,
              onPressed: () async {
                //ここでCompanyが作成されるようにする。
                final address = addressController.text;
                final phoneNumber = phoneNumberController.text;
                final postCode = postCodeController.text;
                final companyName = companyNameController.text;
                final buildingName = buildingNameController.text;
                final company = Company(
                    address: address,
                    buildingName: buildingName,
                    companyName: companyName,
                    phoneNumber: phoneNumber,
                    postCode: postCode);
                FirebaseFirestore.instance
                    .collection('companys')
                    .add(company.toJson());
                await Navigator.push(context, HomePage.route());
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
