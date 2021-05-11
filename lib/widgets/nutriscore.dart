import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/app_images.dart';

class NutriScore extends StatelessWidget {
  final String nutriscore;

  NutriScore({required this.nutriscore});

  @override
  Widget build(BuildContext context) {
    String image = AppImages.nutriscoreA;

    if (nutriscore == 'A') {
      image = AppImages.nutriscoreA;
    } else if (nutriscore == 'B') {
      image = AppImages.nutriscoreB;
    } else if (nutriscore == 'C') {
      image = AppImages.nutriscoreC;
    } else if (nutriscore == 'D') {
      image = AppImages.nutriscoreD;
    } else if (nutriscore == 'E') {
      image = AppImages.nutriscoreE;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nutri-Score',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          image,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
      ],
    );
  }
}
