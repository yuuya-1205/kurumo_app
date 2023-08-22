import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurumo_app/themes.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({super.key, required this.rate, this.size});

  final double rate;
  final double? size;

  @override
  Widget build(BuildContext context) {
    int fullStarCount = rate.floor();
    int halfStarCount = (rate % 1 == 0) ? 0 : 1;
    int emptyStarCount = 5 - fullStarCount - halfStarCount;

    double starSize = size ?? 20;
    double fontSize = size ?? 16;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < fullStarCount; i++)
          FaIcon(
            FontAwesomeIcons.solidStar,
            color: Themes.accentColor,
            size: starSize,
          ),
        for (int i = 0; i < halfStarCount; i++)
          Stack(
            children: [
              FaIcon(
                FontAwesomeIcons.solidStar,
                color: Themes.grayColor[100],
                size: starSize,
              ),
              FaIcon(
                FontAwesomeIcons.solidStarHalf,
                color: Themes.accentColor,
                size: starSize,
              ),
            ],
          ),
        for (int i = 0; i < emptyStarCount; i++)
          FaIcon(
            FontAwesomeIcons.solidStar,
            color: Themes.grayColor[100],
            size: starSize,
          ),
        const SizedBox(
          width: 8,
        ),
        Text(
          rate.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Themes.grayColor[900],
            fontSize: fontSize.toDouble(),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
