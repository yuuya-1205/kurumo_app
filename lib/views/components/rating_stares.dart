import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurumo_app/themes.dart';

Widget ratingStars(double rate) {
  int fullStarCount = rate.floor();
  int halfStarCount = (rate % 1 == 0) ? 0 : 1;
  int emptyStarCount = 5 - fullStarCount - halfStarCount;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      for (int i = 0; i < fullStarCount; i++)
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Themes.accentColor,
          size: 20,
        ),
      for (int i = 0; i < halfStarCount; i++)
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
      for (int i = 0; i < emptyStarCount; i++)
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Themes.grayColor[100],
          size: 20,
        ),
      const SizedBox(
        width: 8,
      ),
      Text(
        rate.toString(),
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
