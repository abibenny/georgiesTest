import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_demo2/constants/app_colors.dart';
import 'package:my_demo2/constants/app_constants.dart';
import 'package:my_demo2/ui/screens/splash/splash_viewmodel.dart';
import 'package:my_demo2/ui/tools/screen_size.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) => model.startTimer(),
        viewModelBuilder: () => SplashViewModel(),
        builder: (context, model, child) => Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/flash.png"),fit: BoxFit.fill)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset("assets/images/noun_chef.png"),
                ),
                Text(
                  "Georgies",
                  style: TextStyle(
                      fontFamily: FontFamily.candara,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.sp,
                      color: Palette.white),
                )
              ],
            ),
          ),
        ));
  }
}
