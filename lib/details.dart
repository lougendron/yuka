import 'package:flutter/material.dart';
import 'package:yuka/nutri.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/tableau.dart';

import 'caracteristiques.dart';
import 'fiche.dart';

class Details extends StatelessWidget {
  final String barcode;

  Details({required this.barcode});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: AppColors.blueDark,
            unselectedItemColor: AppColors.blueLight),
      ),
      home: Onglets(),
    );
  }
}

class Onglets extends StatefulWidget {
  @override
  _OngletsState createState() => _OngletsState();
}

class _OngletsState extends State<Onglets> {
  ProductDetailsCurrentTab current = ProductDetailsCurrentTab.summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentWidget(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: current.index,
            selectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            unselectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Fiche',
                icon: Icon(AppIcons.tabBarcode),
              ),
              BottomNavigationBarItem(
                label: 'Caractéristiques',
                icon: Icon(AppIcons.tabFridge),
              ),
              BottomNavigationBarItem(
                label: 'Nutrition',
                icon: Icon(AppIcons.tabNutrition),
              ),
              BottomNavigationBarItem(
                label: 'Tableau',
                icon: Icon(AppIcons.tabArray),
              ),
            ],
            onTap: (int position) {
              if (position == 0) {
                current = ProductDetailsCurrentTab.summary;
              } else if (position == 1) {
                current = ProductDetailsCurrentTab.info;
              } else if (position == 2) {
                current = ProductDetailsCurrentTab.nutrition;
              } else if (position == 3) {
                current = ProductDetailsCurrentTab.nutritionValues;
              }
              setState(() {});
            }));
  }

  Widget currentWidget() {
    return SizedBox.expand(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Offstage(
              offstage: current != ProductDetailsCurrentTab.summary,
              child: MyHeading(),
            ),
          ),
          Positioned.fill(
            child: Offstage(
              offstage: current != ProductDetailsCurrentTab.info,
              child: Caracteristics(),
            ),
          ),
          Positioned.fill(
            child: Offstage(
              offstage: current != ProductDetailsCurrentTab.nutrition,
              child: Nutri(),
            ),
          ),
          Positioned.fill(
            child: Offstage(
              offstage: current != ProductDetailsCurrentTab.nutritionValues,
              child: Tableau(),
            ),
          ),
        ],
      ),
    );
  }
}

enum ProductDetailsCurrentTab { summary, info, nutrition, nutritionValues }
