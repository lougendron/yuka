import 'package:flutter/cupertino.dart';
import 'package:yuka/model/product.dart';

@immutable
abstract class ResearchState {
  final Future<List<APIProduct>> prod;
  const ResearchState(this.prod);
}

class ResearchInitial extends ResearchState {
  ResearchInitial() : super(<APIProduct>[] as Future<List<APIProduct>>);
}

class ResearchCurrent extends ResearchState {
  ResearchCurrent(Future<List<APIProduct>> product) : super(product);
}
