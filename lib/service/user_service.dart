/*import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_constants.dart';
import '../models/user.dart';*/

/*
class UserService{
  AppUser? user;
  AppUser? tempUser;

  void setTempUser(Map<String, dynamic>? data) {
    if (data != null) {
      tempUser = AppUser.fromJson(data);
    }
  }

  void setUser(Map<String, dynamic>? data) {
    if (data != null) {
      user = AppUser.fromJson(data);
    }
  }

  Future<void> saveLoginCredential(Map<String, dynamic>? data) async {
    if (data == null) return;

    user = AppUser.fromJson(data);
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(Prefs.user, jsonEncode(user!.toJson()));
  }

  Future<AppUser?> loadCredential() async {
    final prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(Prefs.user);
    if (value != null) {
      user = AppUser.fromJson(jsonDecode(value));
    } else {
      user = null;
    }
    return user;
  }

  String get fullName {
    if (user?.name?.isNotEmpty ?? false) {
      return user!.name!;
    }
    return "";
  }

  Future<void> logout() async {
    user = null;
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    // navigationService.pushNamedAndRemoveUntil(
    //   Routes.loginView,
    //   predicate: (route) => false,
    // );
  }
}*/
