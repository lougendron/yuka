import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/colors.dart';

class Subtitle extends StatelessWidget {
  final String desc;

  Subtitle({required this.desc});

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: TextStyle(fontSize: 18.0, color: AppColors.gray3),
    );
  }
}
