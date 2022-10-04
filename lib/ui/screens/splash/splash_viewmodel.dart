import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_demo2/app/app.router.dart';
import 'package:my_demo2/app/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel{
Timer? _timer;
void startTimer() async {
  _timer = Timer(Duration(seconds: 2), () async {
    navigationService.replaceWith(Routes.loginView);
  });

}

@override
  void dispose() {
  _timer?.cancel();
  super.dispose();
//
  }
}