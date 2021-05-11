import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yuka/details.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/app_vectorial_images.dart';
import 'package:yuka/res/colors.dart';

void main() {
  //runApp(Details());
  runApp(MyApp());
  //runApp(MyTable());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Food Facts',
      theme: ThemeData(
          primaryColor: AppColors.white,
          primaryColorDark: AppColors.blueDark,
          accentColor: AppColors.yellow),
      home: MyHomePage(
        title: 'Mes scans',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        actions: <Padding>[
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20.0),
            child: IconButton(
              icon: const Icon(AppIcons.barcode),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) =>
                        Details(barcode: '5000159484695'),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 20.0),
              child: SvgPicture.asset(AppVectorialImages.illEmpty),
            ),
            Text('Vous n\'avez pas encore scanné de produit\n',
                style: TextStyle(fontSize: 20.0)),
            TextButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Text('commencer'.toUpperCase()),
                    Icon(Icons.arrow_right_alt),
                  ]),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) =>
                          Details(barcode: '5000159484695'),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  primary: AppColors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22.0))),
                  backgroundColor: AppColors.yellow,
                ))
          ],
        ),
      ),
    );
  }
}
