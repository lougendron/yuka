import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yuka/network/produit_name.dart';

part 'produit_api.g.dart';

@RestApi()
abstract class ProduitAPI {
  factory ProduitAPI(Dio dio, {required String baseUrl}) = _ProduitAPI;

  @GET('/getProduct')
  Future<ProduitName> loadProduitName(
      {@Query('barcode') String barcode = '5000159484695', CancelToken? token});
}
