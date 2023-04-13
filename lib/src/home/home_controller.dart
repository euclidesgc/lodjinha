import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:lodjinha/src/home/models/category_model.dart';

class HomeController {
  final dio = Dio();

  final imgList = [
    'http://placehold.it/900x300',
    'http://placekitten.com/1000/300',
    'http://placehold.it/900x300',
    'http://placekitten.com/1000/300',
  ];

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
      } else {
        log('error');
      }
    } catch (e, s) {
      log('ERRO: ', error: e, stackTrace: s);
    }
  }
}
