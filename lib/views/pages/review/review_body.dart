import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';
import 'package:kurumo_app/views/components/photo_preview.dart';
import 'package:kurumo_app/views/components/rating_stares.dart';

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
          const SizedBox(
            height: 100,
          ),
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

class ReviewListItem extends StatelessWidget {
  ReviewListItem({Key? key}) : super(key: key);

  final _reviewerInitial = 'A・H';
  final _reviewerGeneral = '30代・女性';
  final _menu = '3列車シートカバー取付';
  final _reviewTitle = '家まで出張していただいて助かりました！';
  final _reviewContent =
      '買い替えた車にシートカバーがついていなかったので、こちらにお願いしました。車屋さんに持って行って施工してもらうことも考えましたが、小さな子供が2人いるため、出張できてくださりとても助かりました。';

  Widget _reviewerInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '2023/06/12',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Themes.grayColor[600],
            fontSize: 10,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              _reviewerInitial,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              _reviewerGeneral,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }

  final List<Image> images = [
    Image.asset(
      'assets/images/no_image.png',
    ),
    Image.asset(
      'assets/images/no_image.png',
    ),
    Image.asset(
      'assets/images/no_image.png',
    ),
    Image.asset(
      'assets/images/no_image.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _reviewerInfo(),
              ratingStars(4.5),
            ],
          ),
          Text(
            _menu,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            color: Themes.grayColor[100],
            height: 1,
          ),
          Text(
            _reviewTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            _reviewContent,
            style: TextStyle(
              fontSize: 12,
              color: Themes.grayColor[700],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          photoPreview(images, context),
        ],
      ),
    );
  }
}
