import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/app_images.dart';
import 'package:yuka/res/colors.dart';

class ImageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Image.network(
      'https://images.unsplash.com/photo-1614598943942-dcf1cba9983f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1534&q=80',
      fit: BoxFit.fitWidth,
    );*/
    return Image.asset(
      AppImages.petitsPois,
      fit: BoxFit.fitWidth,
    );
  }
}

class Heading extends StatelessWidget {
  final String title;
  final String subtitle;

  Heading({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 28.0,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 22.0,
              color: AppColors.gray2,
            ),
          ),
        ],
      ),
    );
  }
}
