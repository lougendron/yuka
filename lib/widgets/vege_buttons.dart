import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/colors.dart';

enum Vege { vrai, faux }

class VegeButton extends StatelessWidget {
  final String label;
  final Vege value;

  VegeButton({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    Widget icon;

    if (value == Vege.vrai) {
      icon = Icon(
        AppIcons.checkmark,
        color: AppColors.white,
      );
    } else {
      icon = Icon(
        AppIcons.close,
        color: AppColors.white,
      );
    }
    return TextButton(
      child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        icon,
        const SizedBox(
          width: 10.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 15.0, color: AppColors.white),
        ),
      ]),
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        primary: AppColors.blue,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22.0))),
        backgroundColor: AppColors.blueLight,
      ),
    );
  }
}
