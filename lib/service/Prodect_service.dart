// ignore_for_file: camel_case_types, avoid_print, prefer_interpolation_to_compose_strings

// import 'dart:js_interop';

import 'package:dio/dio.dart';
import 'package:exam_12/main.dart';
import 'package:exam_12/model/prodect.dart';
import 'package:exam_12/service/base_service.dart';

abstract class ProdectService extends BaseService {
  serach(String title);
  getAllProdect();
  Future<ProdectModel> getOneProdect(String id);
  createNewQuestion(ProdectModel newProdect);
  // updateOldQuestion(String id, CreateQuestionModel newQestion);
  deleteProdet(String id);
}

class Prodect_Service extends ProdectService {
  @override
  createNewQuestion(ProdectModel newProdect) {
    throw UnimplementedError();
  }

  @override
  deleteProdet(String id) {
    throw UnimplementedError();
  }

  @override
  getAllProdect() async {
    @override
    Response response = await dio.get(baseUrl);
    dynamic prodect = response.data['products'];
    // print(response.data['products']);
    prodects = List.generate(
        prodect.length, (index) => ProdectModel.fromMap(prodect[index]));
    print(prodects);
    return prodects;
  }

  @override
  Future<ProdectModel> getOneProdect(String id) {
    throw UnimplementedError();
  }

  @override
  serach(String title) async {
    Response response = await dio.get(baseUrl + 'search?q=' + title);
    dynamic prodect = response.data['products'];
    print(prodect);
    prodects = List.generate(
        prodect.length, (index) => ProdectModel.fromMap(prodect[index]));

    return prodects;
  }
}
