import '../widgets/widgets.dart';

class Locator {
  static final Locator _instance = Locator._internal();

  Locator._internal();

  factory Locator() => _instance;

  BottomControllerTeste? _controller;
  static getController() {
    if (Locator()._controller == null) {
      Locator()._controller = BottomControllerTeste();
    }
    return Locator()._controller!;
  }
}
