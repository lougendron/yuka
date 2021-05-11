import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/widgets/caracteristics.dart';
import 'package:yuka/widgets/header.dart';
import 'package:yuka/widgets/subtitle_bar.dart';

/*class MyCaracteristics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.white,
      ),
      home: Caracteristics(),
    );
  }
}*/

class Caracteristics extends StatelessWidget {
  final List<List<String>> ingredients = <List<String>>[
    <String>['Légumes', 'petits pois 41%, carottes 22%'],
    <String>['Eau', ''],
    <String>['Sucre', ''],
    <String>['Garniture (2,5%)', 'salade, oignon grelot'],
    <String>['Sel', ''],
    <String>['Arômes naturels', '']
  ];

  final List<List<String>> substances = <List<String>>[
    <String>['Aucune', '']
  ];

  final List<List<String>> additifs = <List<String>>[
    <String>['Aucune', '']
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Column(
              children: <Widget>[
                SubtitleBar(text: 'Ingrédients'),
                Caracteristiques(elements: ingredients),
                SubtitleBar(text: 'Substances allergènes'),
                Caracteristiques(elements: substances),
                SubtitleBar(text: 'Additifs'),
                Caracteristiques(elements: additifs),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
