import 'package:flutter_meedu/meedu.dart';

class HomeController extends SimpleNotifier {
  HomeController() {
    _init();
  }
  bool _loading = true;
  bool get loading => _loading;

  Future<void> _init() async {
    _loading = true;

    _loading = false;
  }
}
