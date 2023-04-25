import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:lodjinha/src/home/models/category_model.dart';

class HomeController {
  final dio = Dio();

  final imgList = <String>[];

  getBanner() async {
    const url = 'http://192.168.1.2:3002/categories';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        CategoryModel categoryModel =
            CategoryModel.fromJson(response.data as Map<String, dynamic>);

        for (var element in categoryModel.data.categories) {
          imgList.add(element.image);
        }
      } else {
        log('error');
      }
    } catch (e, s) {
      log('ERRO: ', error: e, stackTrace: s);
    }
  }
}
