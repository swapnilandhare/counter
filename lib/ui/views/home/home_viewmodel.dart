import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int _count = 0;
  int get count => _count;

  void updateCounter() {
    _count += 1;
    notifyListeners();
  }
}
