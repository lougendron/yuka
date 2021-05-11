import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/colors.dart';

class SubtitleBar extends StatelessWidget {
  final String text;

  SubtitleBar({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gray1,
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              backgroundColor: AppColors.gray1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
