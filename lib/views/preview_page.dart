import 'package:flutter/material.dart';
import 'package:kurumo_app/views/pages/preview/vendor_info_body.dart';
import 'package:kurumo_app/views/pages/review/review_body.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/preview',
      ),
      builder: (_) => const PreviewPage(),
    );
  }

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage>
    with SingleTickerProviderStateMixin {
  final _tab = <Tab>[
    const Tab(text: '業者情報'),
    const Tab(text: '口コミ'),
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
          VendorInfoBody(),
          ReviewBody(),
        ],
      ),
    );
  }
}