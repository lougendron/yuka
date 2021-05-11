import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/colors.dart';

class Caracteristiques extends StatelessWidget {
  final List<List<String>> elements;

  Caracteristiques({required this.elements});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 10.0),
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: elements.length,
            itemBuilder: (BuildContext context, int position) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          elements[position][0],
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          elements[position][1],
                          style:
                              TextStyle(fontSize: 18.0, color: AppColors.gray2),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              );
            }),
      ),
    );
  }
}
