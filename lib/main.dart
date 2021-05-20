import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yuka/details.dart';
import 'package:yuka/res/app_icons.dart';
import 'package:yuka/res/app_vectorial_images.dart';
import 'package:yuka/res/colors.dart';
import 'package:yuka/widgets/research.dart';

void main() {
  runApp(MyApp());
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
  final String name = '';
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
              onPressed: () async {
                String code = '';
                try {
                  code = await FlutterBarcodeScanner.scanBarcode(
                      '#ff6666', 'Annuler', false, ScanMode.BARCODE);
                } on Exception catch (_) {
                  code = 'erreur';
                }
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => Details(barcode: code),
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
              onPressed: () async {
                String code = '';
                try {
                  code = await FlutterBarcodeScanner.scanBarcode(
                      '#ff6666', 'Annuler', false, ScanMode.BARCODE);
                } on Exception catch (_) {
                  code = 'erreur';
                }
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => Details(barcode: code),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                primary: AppColors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0))),
                backgroundColor: AppColors.yellow,
              ),
            ),
            TextButton(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Text('rechercher'.toUpperCase()),
                  Icon(Icons.arrow_right_alt),
                ]),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => SearchScreen(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                primary: AppColors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0))),
                backgroundColor: AppColors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
