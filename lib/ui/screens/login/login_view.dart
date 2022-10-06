import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_demo2/app/app.router.dart';
import 'package:my_demo2/app/utils.dart';
import 'package:my_demo2/constants/app_colors.dart';
import 'package:my_demo2/constants/app_constants.dart';
import 'package:my_demo2/ui/screens/login/login_view_model.dart';
import 'package:my_demo2/ui/tools/dismiss_keyboard.dart';
import 'package:my_demo2/ui/tools/screen_size.dart';
import 'package:my_demo2/ui/widgets/custom_submit_button.dart';
import 'package:my_demo2/ui/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) =>
            Scaffold(
              body: SingleChildScrollView(
                child: DismissKeyboard(
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/logini_register.png"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                behavior: HitTestBehavior.translucent,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 450.h),
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 15.w),
                                  child: Form(
                                    key: model.formKey,
                                    autovalidateMode: model.autoValidateMode,
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            prefixIcon: Image.asset(
                                              "assets/images/flag.png",
                                              fit: BoxFit.none,
                                            ),
                                            filled: true,
                                            fillColor: Palette.white,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            hintText: 'Enter your name',
                                            suffixStyle: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Palette.black)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 5),
                                child: CustomSubmitButton(
                                  buttonTitle: 'Sent OTP',
                                  buttonTitleFontSize: 18.sp,
                                  buttonTitleStyle: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Palette.white),
                                  onPressed:
                                      () =>navigationService.navigateTo(Routes.otpView),
                                  radius: 15,
                                  buttonTitleColor: Palette.white,
                                  backgroundColor: Palette.black,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "By Continuing, I Agree To The ",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Palette.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "Terms Of Use",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle: TextDecorationStyle
                                              .solid,
                                          decorationThickness: 6,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 2),
                                    child: Text(",", style: TextStyle(fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Palette.white),),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "Privacy Policy",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle: TextDecorationStyle
                                              .solid,
                                          decorationThickness: 6,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:40),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Palette.white),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ));
  }
}
