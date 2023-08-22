import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';
import 'package:kurumo_app/views/pages/review/review_list_item.dart';

class ReviewBody extends StatefulWidget {
  const ReviewBody({Key? key}) : super(key: key);

  @override
  State<ReviewBody> createState() => _ReviewBodyState();
}

class _ReviewBodyState extends State<ReviewBody> {
  final int _reviewCount = 2;
  String _selectedValue = '日付の新しい順';
  final _usStates = ['日付の新しい順', '日付の古い順', '評価の高い順', '評価の低い順'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$_reviewCount件の口コミ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Themes.grayColor[600],
                ),
              ),
              PopupMenuButton<String>(
                initialValue: _selectedValue,
                onSelected: (String s) {
                  setState(() {
                    _selectedValue = s;
                  });
                },
                itemBuilder: (BuildContext context) {
                  return _usStates.map((String s) {
                    return PopupMenuItem(
                      value: s,
                      child: Text(s),
                    );
                  }).toList();
                },
                child: Row(
                  children: [
                    Text(
                      _selectedValue,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                ReviewListItem(),
                ReviewListItem(),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
