import 'dart:io';

import 'package:counter/model/todo_responce.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_client.dart';

class ApiService {
  static String _baseUrl = "https://jsonplaceholder.typicode.com/";
  final String log = "ApiService";

  PrettyDioLogger prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
  );

  Dio dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: Apis.timeout,
      receiveTimeout: Apis.timeout,
      responseType: ResponseType.json,
      headers: {
        HttpHeaders.acceptHeader: "accept: application/json",
        'Accept': "application/json",
        'Charset': 'utf-8'
      },
      contentType: "application/json",
    ),
  );

  dynamic getApiClient() {
    if (kDebugMode) dio.interceptors.add(prettyDioLogger);

    // dio.interceptors.add(DatadogInterceptors());

    dio.options.followRedirects = false;
    dio.options.headers['Content-Type'] = 'application/json';

    return ApiClient(dio);
  }

  Future<TodoResponse> getTodoDetails() async {
    debugPrint("GetVendorDashboard ");
    return await getApiClient().vendorDashboard();
  }

  void addLoginInterceptor() {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options); //modify your request
    }, onResponse: (response, handler) {
      return handler.next(response);
    }, onError: (DioError e, handler) async {
      if (e.response != null) {
        if (e.response!.statusCode == 401) {
          //catch the 401 here
          dio.interceptors.requestLock.lock();
          dio.interceptors.responseLock.lock();
          // _snackBarService.showSnackbar(
          //     message: e.response!.data ?? "Unauthorized Access");
          Future.delayed(const Duration(milliseconds: 500))
              .then((value) async {});
        } else {
          handler.next(e);
        }
      }
    }));
  }
}
