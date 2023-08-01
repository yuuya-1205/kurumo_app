import 'package:flutter/material.dart';
import 'package:kurumo_app/views/kari_yoyaku_page.dart';
import 'package:kurumo_app/views/reserv_list_page.dart';

import 'calendar_page.dart';

class ReservePage extends StatefulWidget {
  const ReservePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/home',
      ),
      builder: (_) => const ReservePage(),
    );
  }

  @override
  ReservePageState createState() => ReservePageState();
}

class ReservePageState extends State<ReservePage>
    with SingleTickerProviderStateMixin {
  final _tab = <Tab>[
    const Tab(text: '予約一覧'),
    const Tab(text: 'カレンダー'),
    const Tab(text: '仮予約'),
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
          Center(child: ReserveListPage()),
          Center(child: CalendarPage()),
          Center(child: KariYoyakuPage()),
        ],
      ),
    );
  }
}
