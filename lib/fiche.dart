import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuka/bloc/prod_bloc.dart';
import 'package:yuka/network/produit_service.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/widgets/ecoscore.dart';
import 'package:yuka/widgets/header.dart';
import 'package:yuka/widgets/novagroup.dart';
import 'package:yuka/widgets/nutriscore.dart';
import 'package:yuka/widgets/subtitle.dart';
import 'package:yuka/widgets/vege_buttons.dart';

import 'bloc/prod_state.dart';
import 'model/product.dart';

class MyHeading extends StatelessWidget {
  final String barcode;

  MyHeading({required this.barcode});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<APIProduct?>(
        future: Network().loadProduct(barcode),
        builder: (BuildContext context, AsyncSnapshot<APIProduct?> prod) {
          return BlocProvider<ProductBloc>(
            create: (_) => ProductBloc(barcode),
            child: Scaffold(
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
                            child: BlocBuilder<ProductBloc, ProductState>(
                              builder:
                                  (BuildContext context, ProductState state) {
                                return Heading(
                                  title: prod.data.name,
                                  subtitle: state.product.subtitle,
                                );
                              },
                            ),
                          ),
                          Positioned.fill(
                            bottom: 200.0,
                            left: 300,
                            child: Builder(builder: (BuildContext context) {
                              return IconButton(
                                icon: const Icon(
                                  AppIcons.share,
                                  color: AppColors.white,
                                ),
                                onPressed: () {
                                  BlocProvider.of<ProductBloc>(context)
                                      .createProduct('5000159484695');
                                },
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      color: AppColors.gray1,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, bottom: 30),
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
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
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
                            title: 'Quantité',
                            description: '200g (égouté 130g)'),
                        Divider(
                          thickness: 1,
                          color: AppColors.gray2,
                        ),
                        QuantityOrigin(title: 'Vendu', description: 'France'),
                      ]),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 10, end: 10),
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
            ),
          );
        });
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

class Prod {
  final String title;
  final String subtitle;
  final String desc;
  final String nutriscore;
  final String novagroup;
  final String ecoscore;
  final String quantityOriginName;
  final String quantityOriginDesc;
  final String vegeName;
  final Vege vegeValue;

  Prod(
      {required this.title,
      required this.subtitle,
      required this.desc,
      required this.nutriscore,
      required this.novagroup,
      required this.ecoscore,
      required this.quantityOriginName,
      required this.quantityOriginDesc,
      required this.vegeName,
      required this.vegeValue});
}
