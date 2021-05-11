import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/colors.dart';

class EcoScore extends StatelessWidget {
  final String score;

  EcoScore({required this.score});

  @override
  Widget build(BuildContext context) {
    String textToDisplay = '';
    Icon icon = Icon(AppIcons.ecoscoreA, color: AppColors.ecoScoreA);

    if (score == 'A') {
      textToDisplay = 'Très faible impact environnemental';
      icon = Icon(AppIcons.ecoscoreA, color: AppColors.ecoScoreA);
    } else if (score == 'B') {
      textToDisplay = 'Faible impact environnemental';
      icon = Icon(AppIcons.ecoscoreB, color: AppColors.ecoScoreB);
    } else if (score == 'C') {
      textToDisplay = 'Impact modéré sur l\'environnement';
      icon = Icon(AppIcons.ecoscoreC, color: AppColors.ecoScoreC);
    } else if (score == 'D') {
      textToDisplay = 'Impact environnemental élevé';
      icon = Icon(AppIcons.ecoscoreD, color: AppColors.ecoScoreD);
    } else if (score == 'E') {
      textToDisplay = 'Impact environnemental très élevé';
      icon = Icon(AppIcons.ecoscoreE, color: AppColors.ecoScoreE);
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 10.0, end: 20.0),
          child: icon,
        ),
        Text(
          textToDisplay,
          style: TextStyle(fontSize: 15.0, color: AppColors.gray2),
        ),
      ],
    );
  }
}
