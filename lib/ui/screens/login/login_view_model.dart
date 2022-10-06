import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel{
  var nameController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  FocusNode mobileNo = FocusNode();
  String? mobile;

  @override
  void initState() {
    nameController = TextEditingController();
  }
}