/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:meli_app/services/user_service.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../constants/app_strings.dart';
import '../models/http_response.dart';
import '../ui/widgets/appbar_back.dart';
import 'notification_service.dart';*/

/*class ApiService {
  // Dev URL  :
  // Live URL :
  static const String baseUrl = "http://13.232.249.207:8069/api";

  final _notificationService = locator<NotificationService>();
  final _userService = locator<UserService>();

  // AppUser? user;
  var client = RetryClient(
    http.Client(),
    whenError: (onError, stackTrace) {
      if (onError.toString().contains(AppStrings.connectionClosedError)) {
        debugPrint("Retrying....");
        return true;
      }
      return false;
    },
  );
  Duration timeoutDuration = const Duration(seconds: 20);

  Map<String, String> get userHeader {
    // if (user?.accessToken != null) {
    //   return {
    //     'Accept': 'application/json',
    //     'Authorization': 'Bearer ${user!.accessToken}',
    //     'Content-Type': 'application/json',
    //   };
    // }
    debugPrint('Token is null');
    return jsonHeader;
  }

  static const Map<String, String> jsonHeader = {
    "Accept": "application/json",
    'Content-Type': 'application/json',
    *//*"Content-Type": "multipart/form-data",*//*
    "access_token": "",
    "build_no": "1",
    "device_type": "1"
  };

  // Future<void> saveLoginCredential(AppUser appUser) async {
  // user = appUser;
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // prefs.setBool(Prefs.isLoggedIn, true);
  // prefs.setString(Prefs.user, jsonEncode(user!.toJson()));
  // }

  // Future<AppUser?> loadCredential() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? value = prefs.getString(Prefs.user);
  //   if (value != null) {
  //     user = AppUser.fromJson(jsonDecode(value));
  //   } else {
  //     user = null;
  //   }
  //   return user;
  // }
  Future<bool> handleRegister(
      {required String name,
      required String login,
      required String password}) async {
    bool status = false;

    var response = await client
        .post(
          Uri.parse("$baseUrl/user/create"),
          headers: jsonHeader,
          body: jsonEncode({
            "name": name,
            "login": login,
            "password": password,
            "device_token": await _notificationService.getDeviceToken(),
          }),
        )
        .timeout(
          timeoutDuration,
          onTimeout: () => http.Response("Request Timeout", 408),
        )
        .catchError((onError) => http.Response("$onError", 404));

    debugPrint("mame: $name login: $login password: $password ");
    if (response.statusCode == 200) {
      debugPrint(
        'login Response: 200 : BOdy -> ${response.body}',
      );
      BasicResponse responseBody = BasicResponse.fromJson(
        jsonDecode(response.body),
      );
      if (responseBody.errorcode == 0) {
        debugPrint(
          'login Response: Success -> ${responseBody.message}',
        );
        status = true;
        //_userService.setTempUser(responseBody.data);
      } else {
        debugPrint('login Response: Error -> ${responseBody.message}');
      }
    } else {
      debugPrint('login Response: Server Error -> ${response.body}');
    }
    return status;
  }

  Future<bool> handleSignin({
    required String login,
    required String password,
  }) async {
    bool status = false;

    var response = await client
        .post(
          Uri.parse("$baseUrl/user/login"),
          headers: jsonHeader,
          body: jsonEncode({
            "login": login,
            "password": password,
            "device_token": await _notificationService.getDeviceToken(),
          }),
        )
        .timeout(
          timeoutDuration,
          onTimeout: () => http.Response("Request Timeout", 408),
        )
        .catchError((onError) => http.Response("$onError", 404));
    debugPrint("login: $login password: $password ");
    if (response.statusCode == 200) {
      debugPrint(
        'login Response: 200 : BOdy -> ${response.body}',
      );
      BasicResponse responseBody = BasicResponse.fromJson(
        jsonDecode(response.body),
      );
      if (responseBody.errorcode == 0) {
        debugPrint(
          'login Response: Success -> ${responseBody.message}',
        );
        //var userData = AppUser.fromJson(responseBody.data ?? {});
        _userService.saveLoginCredential(responseBody.data);

        status = true;
      } else {
        debugPrint('login Response: Error -> ${responseBody.message}');
      }
    } else {
      debugPrint('login Response: Server Error -> ${response.body}');
    }
    return status;
  }

  Future<void> verifyOtp({required String otp}) async {
    var response = await client
        .post(
          Uri.parse("$baseUrl/otp"),
          headers: jsonHeader,
          body: jsonEncode({
            "user_id": 1,
            "otp": otp,
          }),
        )
        .timeout(
          timeoutDuration,
          onTimeout: () => http.Response("Request Timeout", 408),
        )
        .catchError((onError) => http.Response("$onError", 404));

    if (response.statusCode == 200) {
      BasicResponse responseBody = BasicResponse.fromJson(
        jsonDecode(response.body),
      );
      if (responseBody.errorcode == 0) {
        debugPrint(
          'verify Response: Success -> ${responseBody.message}',
        );
        dashBoardVM.setCurrentIndex(0);
        StackedService.navigatorKey?.currentState
            ?.popUntil((Route route) => route.isFirst);
      } else {
        debugPrint('verify Response: Error -> ${responseBody.message}');
      }
    } else {
      debugPrint('verify Response: Server Error -> ${response.body}');
    }
    return;
  }
}*/
