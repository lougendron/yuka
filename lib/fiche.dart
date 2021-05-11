import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/details.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/widgets/ecoscore.dart';
import 'package:yuka/widgets/header.dart';
import 'package:yuka/widgets/novagroup.dart';
import 'package:yuka/widgets/nutriscore.dart';
import 'package:yuka/widgets/subtitle.dart';
import 'package:yuka/widgets/vege_buttons.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.white,
      ),
      home: MyHeading(),
    );
  }
}

class MyHeading extends StatelessWidget {
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
                  Positioned.fill(
                    bottom: 200.0,
                    left: 300,
                    child: IconButton(
                      icon: const Icon(
                        AppIcons.share,
                        color: AppColors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) =>
                                Details(barcode: '5000159484695'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: AppColors.gray1,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 20, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Subtitle(
                        desc:
                            'Petits pois et carottes à l\'étuvée avec garniture'),
                    const SizedBox(height: 20.0),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 44,
                            child: NutriScore(nutriscore: 'B'),
                          ),
                          VerticalDivider(
                            //height: double.infinity,
                            thickness: 1.0,
                            color: AppColors.gray2,
                          ),
                          Expanded(
                            flex: 56,
                            child: NovaGroup(group: 'Group4'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Divider(
                      thickness: 1,
                      color: AppColors.gray2,
                    ),
                    const SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'EcoScore',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        EcoScore(score: 'D'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 10, bottom: 10, end: 10, top: 10),
              child: Column(children: <Widget>[
                QuantityOrigin(
                    title: 'Quantité', description: '200g (égouté 130g)'),
                Divider(
                  thickness: 1,
                  color: AppColors.gray2,
                ),
                QuantityOrigin(title: 'Vendu', description: 'France'),
              ]),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
              child: Row(
                children: <Widget>[
                  VegeButton(
                    label: 'Végétalien',
                    value: Vege.vrai,
                  ),
                  Spacer(),
                  VegeButton(
                    label: 'Végétarien',
                    value: Vege.faux,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class QuantityOrigin extends StatelessWidget {
  String title = '';
  String description = '';

  QuantityOrigin({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 10, bottom: 10),
      child: Row(children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontSize: 18.0,
              color: AppColors.blue,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          description,
          style: TextStyle(fontSize: 18.0, color: AppColors.gray3),
        ),
      ]),
    );
  }
}
