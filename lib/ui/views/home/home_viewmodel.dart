import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/router.router.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int _count = 0;
  int get count => _count;

  void updateCounter() {
    _count += 1;
    notifyListeners();
  }

  void gotoWelcome() {
    _navigationService.navigateTo(Routes.welcomeView);
  }
}
