import '../widgets/widgets.dart';

class MyLocator {
  static final MyLocator _instance = MyLocator._internal();

  MyLocator._internal();

  factory MyLocator() => _instance;

  BottomControllerTeste? _controller;
  static getController() {
    if (MyLocator()._controller == null) {
      MyLocator()._controller = BottomControllerTeste();
    }
    return MyLocator()._controller!;
  }
}
