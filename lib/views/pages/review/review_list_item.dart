
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurumo_app/themes.dart';
import 'package:kurumo_app/views/components/photo_preview.dart';

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

  Widget _stars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Themes.accentColor,
          size: 20,
        ),
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Themes.accentColor,
          size: 20,
        ),
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Themes.accentColor,
          size: 20,
        ),
        Stack(
          children: [
            FaIcon(
              FontAwesomeIcons.solidStar,
              color: Themes.grayColor[100],
              size: 20,
            ),
            const FaIcon(
              FontAwesomeIcons.solidStarHalf,
              color: Themes.accentColor,
              size: 20,
            ),
          ],
        ),
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Themes.grayColor[100],
          size: 20,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '3.5',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Themes.grayColor[900],
            fontSize: 16,
            height: 1.5,
          ),
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
              _stars(),
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
