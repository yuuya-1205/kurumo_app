import 'package:flutter/material.dart';

class HistoryListPage extends StatelessWidget {
  const HistoryListPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/history_list',
      ),
      builder: (_) => const HistoryListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('履歴一覧ページ'),
        CustomListTile(
          date: '2023/05/05(月) 15:00-',
          name: '客尾太郎',
          carModel: 'トヨタライズ',
          carType: '1.5ハイブリッドGRスポーツCVT',
          product: 'Clazzio クラッツィオ',
          request: '出張希望',
          salesperson: '担当：店野 二郎',
          sales: '売上：¥13,000',
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String date;
  final String name;
  final String carModel;
  final String carType;
  final String product;
  final String request;
  final String salesperson;
  final String sales;

  CustomListTile({
    required this.date,
    required this.name,
    required this.carModel,
    required this.carType,
    required this.product,
    required this.request,
    required this.salesperson,
    required this.sales,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: Container(
          padding: EdgeInsets.all(8),
          child: Text(date + " | " + name),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(carModel),
                ),
                const SizedBox(width: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(carType),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(product),
                ),
                const SizedBox(width: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(request),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(salesperson),
                ),
                const SizedBox(width: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(sales),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
