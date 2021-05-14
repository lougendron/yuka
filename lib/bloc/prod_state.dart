import 'package:flutter/cupertino.dart';
import 'package:yuka/widgets/vege_buttons.dart';

import '../fiche.dart';

@immutable
abstract class ProductState {
  final Prod product;
  const ProductState(this.product);
}

class ProductInitial extends ProductState {
  ProductInitial()
      : super(Prod(
            title: '',
            subtitle: '',
            desc: '',
            nutriscore: '',
            novagroup: '',
            ecoscore: '',
            quantityOriginName: '',
            quantityOriginDesc: '',
            vegeName: '',
            vegeValue: Vege.faux));
}

class ProductCurrent extends ProductState {
  ProductCurrent(Prod product) : super(product);
}
