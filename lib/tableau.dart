import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/widgets/grille.dart';
import 'package:yuka/widgets/header.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tableau(),
    );
  }
}

class Tableau extends StatelessWidget {
  final List<List<String>> items = <List<String>>[
    <String>['', 'Pour 100g', 'Par part'],
    <String>['Energie', '293 kj', '?'],
    <String>['Matières grasses', '0,8 g', '?'],
    <String>['dont Acides gras saturés', '0,1 g', '?'],
    <String>['Glucides', '8,4 g', '?'],
    <String>['dont Sucres', '5,2 g', '?'],
    <String>['Fibres alimentaires', '5,2 g', '?'],
    <String>['Protéines', '4,2 g', '?'],
    <String>['Sel', '0,75 g', '?'],
    <String>['Sodium', '0,295 g', '?']
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      title: 'Petits pois et carottes', subtitle: 'Cassegrain'),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.white,
            child: MyList(
              elements: items,
            ),
          ),
        ],
      ),
    );
  }
}
