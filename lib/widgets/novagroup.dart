import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NovaGroup extends StatelessWidget {
  final String group;

  NovaGroup({required this.group});

  @override
  Widget build(BuildContext context) {
    String textToDisplay = '';
    if (group == 'Group1') {
      textToDisplay = 'Aliments non transformés\nou transformés minimalement';
    } else if (group == 'Group2') {
      textToDisplay = 'Ingrédients culinaires transformés';
    } else if (group == 'Group3') {
      textToDisplay = 'Aliments transformés';
    } else if (group == 'Group4') {
      textToDisplay = 'Produits alimentaires et\nboissons ultra-transformés';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Groupe NOVA',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          textToDisplay,
          style: TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
