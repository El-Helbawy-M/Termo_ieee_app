import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:thermo_ieee_app/config/api_routes.dart';
import 'package:thermo_ieee_app/source/puplic_model.dart';

class NetworkHelper {
  static NetworkHelper? _instance;
  static Dio? _dio;

  NetworkHelper._internal();

  factory NetworkHelper(
      {String? urlCode, String? schema, bool change = false}) {
    if (_instance == null) {
      // NetworkHelper.generateBaseUrl(urlCode: urlCode, schema: schema);
      _instance = NetworkHelper._internal();
      _dio = Dio();
      _dio!.options.baseUrl = ApiRoutes.baseUrl;
    }
    return _instance!;
  }

  Future<dynamic> get(
      {required String? url,
      Mapper? model,
      Map<String, dynamic>? query,
      var headers}) async {
    Response? _res;

    log('==: End point => ${_dio!.options.baseUrl}$url');
    log(query.toString());
    try {
      _res = await _dio!.get(url!, queryParameters: query);
      log('==: End point =>  ${_dio!.options.baseUrl}$url');
      log('Response >>> ${_res.toString()}');
    } on DioError catch (e) {
      _res = e.response;
      log('Exception >>>  ${e.response.toString()}');
      if (e.response == null) {
        return Response(
          data: {"status": 0, "message": "Server has issue please try again!"},
          requestOptions: RequestOptions(path: ''),
        );
      }
    }

    if (model == null) {
      return _res;
    } else if (model is ListMapper) {
      return Mapper(model, _res!.data);
    } else {
      return Mapper(model, _res!.data);
    }
  }
 }
