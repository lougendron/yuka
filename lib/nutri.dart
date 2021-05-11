import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/widgets/header.dart';
import 'package:yuka/widgets/nutrition_details.dart';
import 'package:yuka/widgets/subtitle.dart';

/*class MyNutri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nutri(),
    );
  }
}*/

class Nutri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300.0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(child: ImageHeader()),
                  Positioned.fill(
                    top: 200.0,
                    child: Heading(
                        title: 'Petits pois et carottes',
                        subtitle: 'Cassegrain'),
                  ),
                ],
              ),
            ),
            Container(
                color: AppColors.white,
                child: Column(
                  children: <Widget>[
                    Subtitle(desc: 'Repères nutritionnels pour 100g'),
                    NutritionDetails(
                      lipides: 0.8,
                      acides: 0.1,
                      sucres: 5.2,
                      sel: 1.75,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
