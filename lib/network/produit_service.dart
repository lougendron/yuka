import 'package:dio/dio.dart';
import 'package:yuka/model/product.dart';
import 'package:yuka/network/produit_api.dart';

class Network {
  late ProduitAPI api;

  Network._() {
    Dio dio = Dio(BaseOptions(baseUrl: 'https://api.formation-android.fr/v2/'));
    api = ProduitAPI(dio);
  }

  factory Network() => Network._();

  Future<APIProduct?> loadProduct(String barcode) {
    return api
        .loadProduct(barcode: barcode)
        .then((APIGetProductResponse response) => response.response);
  }

  Future<List<APIProduct>?> research(String field) async {
    APIFindProductResponse response = await api.loadProductsList(name: field);
    return response.response;
  }

  Future<List<APIProduct>?> research2(String field) {
    return api
        .loadProductsList(name: field)
        .then((APIFindProductResponse response) => response.response);
  }
}
