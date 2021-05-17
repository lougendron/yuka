import 'package:flutter/cupertino.dart';
import 'package:yuka/model/product.dart';

@immutable
abstract class ResearchState {
  final List<APIProduct> prod;
  const ResearchState(this.prod);
}

class ResearchInitial extends ResearchState {
  ResearchInitial() : super(<APIProduct>[]);
}

class ResearchCurrent extends ResearchState {
  ResearchCurrent(List<APIProduct> product) : super(product);
}
