import 'package:dio/dio.dart';
import 'package:yuka/model/product.dart';
import 'package:yuka/network/produit_api.dart';

class Network {
  late ProduitAPI api;

  void init() {
    Dio dio = Dio(BaseOptions(baseUrl: 'https://api.formation-android.fr/v2/'));
    api = ProduitAPI(dio);
  }

  Future<APIProduct> loadProduct(String barcode) {
    init();
    return api.loadProduct(barcode: barcode);
  }

  Future<List<APIProduct>> research(String field) {
    init();
    return api.loadProductsList(name: field);
  }
}
