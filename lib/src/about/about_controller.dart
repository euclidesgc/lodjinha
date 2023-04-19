import 'package:flutter/material.dart';

class AboutController extends ChangeNotifier {
  ValueNotifier<String> nome = ValueNotifier('');

  void changeName(String value) {
    nome.value = value;
  }
}
