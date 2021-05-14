import 'package:bloc/bloc.dart';
import 'package:yuka/bloc/prod_event.dart';
import 'package:yuka/bloc/prod_state.dart';
import 'package:yuka/fiche.dart';
import 'package:yuka/widgets/vege_buttons.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  Prod product = Prod(
      title: '',
      subtitle: '',
      desc: '',
      nutriscore: '',
      novagroup: '',
      ecoscore: '',
      quantityOriginName: '',
      quantityOriginDesc: '',
      vegeName: '',
      vegeValue: Vege.faux);

  ProductBloc(String barcode) : super(ProductInitial()) {
    createProduct(barcode);
  }

  void createProduct(String barcode) {
    add(const CreateProductEvent(''));
  }

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is CreateProductEvent) {
      product = Prod(
          title: 'Petits pois et carottes',
          subtitle: 'Cassegrain',
          desc: 'Petits pois et carottes à l\'étuvée avec garniture',
          nutriscore: 'B',
          novagroup: 'Group4',
          ecoscore: 'D',
          quantityOriginName: 'Quantité',
          quantityOriginDesc: '200g (égouté 130g)',
          vegeName: 'Végétalien',
          vegeValue: Vege.vrai);
      yield ProductCurrent(product);
    }
  }
}
