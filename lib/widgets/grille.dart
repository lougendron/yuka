import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuka/res/colors.dart';

class MyList extends StatelessWidget {
  final List<List<String>> elements;

  MyList({required this.elements});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: elements.length,
      itemBuilder: (BuildContext context, int position) {
        return Row(children: <Widget>[
          Expanded(
            flex: 60,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.gray2),
                  right: BorderSide(color: AppColors.gray2),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 10.0, top: 12.0),
                child: Text(
                  elements[position][0],
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 20,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.gray2),
                  right: BorderSide(color: AppColors.gray2),
                ),
              ),
              child: Center(child: Text(elements[position][1])),
            ),
          ),
          Expanded(
            flex: 20,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.gray2)),
              ),
              child: Center(child: Text(elements[position][2])),
            ),
          ),
        ]);
      },
    );
  }
}
