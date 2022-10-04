import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:my_demo2/app/app.locator.dart';
import 'package:my_demo2/app/app.router.dart';
import 'package:my_demo2/constants/app_colors.dart';
import 'package:my_demo2/constants/app_constants.dart';
import 'package:my_demo2/constants/app_strings.dart';
import 'package:my_demo2/ui/tools/screen_size.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statusbarz/statusbarz.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  if (Platform.isAndroid) {
    ByteData data =
        await PlatformAssetBundle().load("assets/ca/lets-encrypt-r3.pem");
    SecurityContext.defaultContext.setTrustedCertificatesBytes(
      data.buffer.asUint8List(),
    );
  }
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, Widget? child) => StatusbarzCapturer(
                child: MaterialApp(
              title: AppStrings.appName,
              theme: ThemeData(
                primarySwatch: generateMaterialColor(Palette.white),
                colorScheme:
                    ThemeData().colorScheme.copyWith(primary: Palette.white),
                fontFamily: FontFamily.candara,
                scaffoldBackgroundColor: Palette.scaffoldBackgroundColor,
                scrollbarTheme: ScrollbarThemeData(
                    thickness: MaterialStateProperty.all(5),
                    thumbColor: MaterialStateProperty.all(
                        Palette.black.withOpacity(.6)),
                    trackColor: MaterialStateProperty.all(
                        Palette.lightGrey.withOpacity(.6)),
                    radius: const Radius.circular(0),
                    minThumbLength: 10),
                dividerColor: Colors.transparent,
              ),
              builder: FlutterSmartDialog.init(builder: (context, child) {
                ScreenSize.init(context);
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                    child: child!);
              }),
                  navigatorKey: StackedService.navigatorKey,
                  onGenerateRoute: StackedRouter().onGenerateRoute,
                  navigatorObservers: [
                    Statusbarz.instance.observer,
                    FlutterSmartDialog.observer
                  ],
            )
        ));
  }
}

