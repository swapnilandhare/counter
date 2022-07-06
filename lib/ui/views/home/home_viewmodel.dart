import 'package:counter/model/todo_responce.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../api/api_service.dart';
import '../../../app/locator.dart';
import '../../../app/router.router.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<ApiService>();

  int _count = 0;
  int get count => _count;

  Future<void> updateCounter() async {
    // _count += 1;
    // notifyListeners();

    try {
      TodoResponse response = await _apiService.getTodoDetails();
      debugPrint("Responce is  = $response");
    } catch (e) {
      debugPrint("Error = $e");
    }
  }

  void gotoWelcome() {
    _navigationService.navigateTo(Routes.welcomeView);
  }
}
