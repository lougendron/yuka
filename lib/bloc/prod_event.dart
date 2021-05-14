import 'package:flutter/cupertino.dart';

@immutable
abstract class ProductEvent {
  const ProductEvent();
}

@immutable
class CreateProductEvent extends ProductEvent {
  final String barcode;
  const CreateProductEvent(this.barcode);
}
