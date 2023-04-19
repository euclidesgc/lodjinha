import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:lodjinha/src/home/models/category_model.dart';

class HomeController {
  final dio = Dio();

  final imgList = <String>[];

  getBanner() async {
    const url =
        'https://directus-production-e852.up.railway.app/items/categories';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        CategoryModel categoryModel =
            CategoryModel.fromJson(response.data as Map<String, dynamic>);
        log('id: ${categoryModel.data[0].id}');
        log('name: ${categoryModel.data[0].name}');
        log('imageUrl: ${categoryModel.data[0].imageUrl}');

        for (var element in categoryModel.data) {
          imgList.add(element.imageUrl);
        }
      } else {
        log('error');
      }
    } catch (e, s) {
      log('ERRO: ', error: e, stackTrace: s);
    }
  }
}
