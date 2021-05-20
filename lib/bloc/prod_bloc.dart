import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yuka/bloc/prod_event.dart';
import 'package:yuka/bloc/prod_state.dart';
import 'package:yuka/fiche.dart';
import 'package:yuka/network/produit_service.dart';
import 'package:yuka/widgets/vege_buttons.dart';

part 'prod_bloc.g.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(String barcode) : super(ProductInitial()) {
    createProduct(barcode);
  }

  void createProduct(String barcode) {
    add(CreateProductEvent(barcode));
  }

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is CreateProductEvent) {
      Hive.initFlutter();
      Hive.registerAdapter(HiveProdAdapter());
      Box<Prod> product_box = await Hive.openBox('productBox');
      Prod dbprod = product_box.get(event.barcode)!;
      if (dbprod == null) {
        var request = await Network().loadProduct(event.barcode);
        Prod prod = Prod(
          barcode: request?.barcode,
          title: request?.name,
          subtitle: request?.altName,
          desc: request?.altName,
          nutriscore: '',
          novagroup: '',
          ecoscore: '',
          quantityOriginName: request?.quantity,
          quantityOriginDesc: request?.quantity,
          vegeName: '',
          vegeValue: Vege.vrai,
        );
        product_box.put(event.barcode, prod);
      }
      yield ProductCurrent(dbprod);
    }
  }
}

@HiveType(typeId: 1)
class HiveProd {
  @HiveField(0)
  final String barcode;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String subtitle;

  @HiveField(3)
  final String desc;

  @HiveField(4)
  final String nutriscore;

  @HiveField(5)
  final String novagroup;

  @HiveField(6)
  final String ecoscore;

  @HiveField(7)
  final String quantityOriginName;

  @HiveField(8)
  final String quantityOriginDesc;

  @HiveField(9)
  final String vegeName;

  @HiveField(10)
  final String vegeValue;

  HiveProd(
      this.barcode,
      this.title,
      this.subtitle,
      this.desc,
      this.nutriscore,
      this.novagroup,
      this.ecoscore,
      this.quantityOriginName,
      this.quantityOriginDesc,
      this.vegeName,
      this.vegeValue);
}
