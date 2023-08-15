import 'package:flutter/material.dart';
import 'package:kurumo_app/views/review_page.dart';

import 'calendar_page.dart';
import 'history_list_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/history',
      ),
      builder: (_) => const HistoryPage(),
    );
  }

  @override
  HistoryPageState createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  final _tab = <Tab>[
    const Tab(text: '履歴'),
    const Tab(text: '評価・口コミ'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tab.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TabBar(
              controller: _tabController,
              tabs: _tab,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(child: HistoryListPage()),
          Center(child: ReviewPage()),
        ],
      ),
    );
  }
}
