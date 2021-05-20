import 'package:flutter/cupertino.dart';

import '../fiche.dart';

@immutable
abstract class ProductState {
  final Prod? product;
  const ProductState(this.product);
}

class ProductInitial extends ProductState {
  ProductInitial() : super(null);
}

class ProductCurrent extends ProductState {
  ProductCurrent(Prod product) : super(product);
}
