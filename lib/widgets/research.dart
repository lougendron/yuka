import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yuka/bloc/research_bloc.dart';
import 'package:yuka/bloc/research_state.dart';
import 'package:yuka/model/product.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final PublishSubject<String> inputSubject = PublishSubject<String>();
  late StreamSubscription<String> listener;
  final String name = '';

  @override
  void initState() {
    super.initState();

    // TODO 3) Faire en sorte d'éviter de "spammer" cette fonction
    listener = inputSubject.distinct().listen((String search) {
      // TODO 1) Appeler la requête de recherche
      BlocProvider.of<ResearchBloc>(context).createProductsList(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResearchBloc>(
      create: (_) => ResearchBloc(name),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Recherche'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Votre recherche',
              ),
              onChanged: (String input) => inputSubject.add(input),
              textAlign: TextAlign.center,
            ),
            // TODO 2) Afficher les résultats ici
            Expanded(
              child: BlocBuilder<ResearchBloc, ResearchState>(
                builder: (BuildContext context, ResearchState state) {
                  List<APIProduct> prod = state.prod;

                  return ListView.builder(
                    itemCount: prod.length,
                    itemBuilder: (BuildContext context, int position) {
                      return Text(prod[position].name ?? '');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    listener.cancel();
    inputSubject.close();
    super.dispose();
  }
}
