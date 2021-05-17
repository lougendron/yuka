import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yuka/model/nutrition.dart';
import 'package:yuka/model/product.dart';

part 'produit_api.g.dart';

@RestApi()
abstract class ProduitAPI {
  factory ProduitAPI(Dio dio, {String? baseUrl}) = _ProduitAPI;

  @GET('/getProduct')
  Future<APIProduct> loadProduct(
      {@Query('barcode') String? barcode, CancelToken? token});

  @GET('/findProduct')
  Future<List<APIProduct>> loadProductsList(
      {@Query('name') String? name, CancelToken? token});
}
