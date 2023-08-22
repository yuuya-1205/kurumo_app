import 'package:flutter/material.dart';
import 'package:kurumo_app/themes.dart';
import 'package:kurumo_app/views/components/rating_stares.dart';
import 'package:kurumo_app/views/pages/review/review_list_item.dart';

class PreviewReviewBody extends StatefulWidget {
  const PreviewReviewBody({Key? key}) : super(key: key);

  @override
  State<PreviewReviewBody> createState() => _PreviewReviewBodyState();
}

class _PreviewReviewBodyState extends State<PreviewReviewBody> {
  final int _reviewCount = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$_reviewCount件の口コミ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Themes.grayColor[600],
            ),
          ),
          const SizedBox(height: 8),
          const RatingStars(
            rate: 4.5,
            size: 24,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: const [
                ReviewListItem(),
                ReviewListItem(),
                SizedBox(
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
