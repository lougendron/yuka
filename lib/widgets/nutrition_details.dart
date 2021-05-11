import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/colors.dart';

class NutritionDetails extends StatelessWidget {
  final double lipides;
  final double acides;
  final double sucres;
  final double sel;

  NutritionDetails(
      {required this.lipides,
      required this.acides,
      required this.sucres,
      required this.sel});

  @override
  Widget build(BuildContext context) {
    Color couleurLipides;
    String descLipides;
    Color couleurAcides;
    String descAcides;
    Color couleurSucres;
    String descSucres;
    Color couleurSel;
    String descSel;

    if (lipides < 3) {
      couleurLipides = AppColors.ecoScoreA;
      descLipides = 'Faible quantité';
    } else if (lipides > 20) {
      couleurLipides = AppColors.ecoScoreE;
      descLipides = 'Quantité élevée';
    } else {
      couleurLipides = AppColors.ecoScoreC;
      descLipides = 'Quantité modérée';
    }

    if (acides < 1.5) {
      couleurAcides = AppColors.ecoScoreA;
      descAcides = 'Faible quantité';
    } else if (acides > 5) {
      couleurAcides = AppColors.ecoScoreE;
      descAcides = 'Quantité élevée';
    } else {
      couleurAcides = AppColors.ecoScoreC;
      descAcides = 'Quantité modérée';
    }

    if (sucres < 5) {
      couleurSucres = AppColors.ecoScoreA;
      descSucres = 'Faible quantité';
    } else if (sucres > 12.5) {
      couleurSucres = AppColors.ecoScoreE;
      descSucres = 'Quantité élevée';
    } else {
      couleurSucres = AppColors.ecoScoreC;
      descSucres = 'Quantité modérée';
    }

    if (sel < 0.3) {
      couleurSel = AppColors.ecoScoreA;
      descSel = 'Faible quantité';
    } else if (sel > 1.5) {
      couleurSel = AppColors.ecoScoreE;
      descSel = 'Quantité élevée';
    } else {
      couleurSel = AppColors.ecoScoreC;
      descSel = 'Quantité modérée';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: <Widget>[
          Detail(
              title: 'Matières grasses / lipides',
              couleur: couleurLipides,
              quantityValue: lipides,
              quantity: descLipides),
          Divider(),
          Detail(
              title: 'Acides gras saturés',
              couleur: couleurAcides,
              quantityValue: acides,
              quantity: descAcides),
          Divider(),
          Detail(
              title: 'Sucres',
              couleur: couleurSucres,
              quantityValue: sucres,
              quantity: descSucres),
          Divider(),
          Detail(
              title: 'Sel',
              couleur: couleurSel,
              quantityValue: sel,
              quantity: descSel),
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final String title;
  final Color couleur;
  final double quantityValue;
  final String quantity;

  Detail(
      {required this.title,
      required this.couleur,
      required this.quantityValue,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
              ),
              Spacer(),
              Text(
                quantityValue.toString() + 'g',
                style: TextStyle(color: couleur, fontSize: 19.0),
              ),
            ],
          ),
          Text(
            quantity,
            style: TextStyle(color: couleur, fontSize: 19.0),
          )
        ],
      ),
    );
  }
}
