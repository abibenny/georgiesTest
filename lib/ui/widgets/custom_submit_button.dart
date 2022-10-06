import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    Key? key,

    required this.buttonTitle,
    this.onPressed,
    this.radius = 0,
    this.color = Palette.primary,
    this.buttonTitleColor = Colors.white,
    this.buttonTitleFontWeight = FontWeight.w500,
    this.buttonTitleFontSize = 16,
    this.buttonTitleStyle,
    this.height,
    this.backgroundColor,
  }) : super(key: key);
  final Color? backgroundColor;
  final String buttonTitle;
  final double radius;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? buttonTitleColor;
  final TextStyle? buttonTitleStyle;
  final FontWeight? buttonTitleFontWeight;
  final double? buttonTitleFontSize;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      clipBehavior: Clip.hardEdge,
      width: double.infinity,
      height:55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: backgroundColor?? Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent),
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: _setButtonTitleStyle(),
        ),
      ),
    );
  }

  TextStyle _setButtonTitleStyle() {
    if (buttonTitleStyle == null) {
      return TextStyle(
        fontSize: buttonTitleFontSize,
        color: buttonTitleColor,
        fontWeight: buttonTitleFontWeight,
      );
    } else {
      return buttonTitleStyle!;
    }
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.buttonTitle,
    this.onPressed,
    this.color = Palette.primary,
    this.buttonTitleColor = Palette.primary,
    this.buttonTitleFontWeight = FontWeight.w500,
    this.buttonTitleFontSize = 16,
    this.buttonTitleStyle,
    this.height,
  }) : super(key: key);
  final String buttonTitle;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? buttonTitleColor;
  final TextStyle? buttonTitleStyle;
  final FontWeight? buttonTitleFontWeight;
  final double? buttonTitleFontSize;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      clipBehavior: Clip.hardEdge,
      width: double.infinity,
      height: height ?? 45,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(width: 1.0, color: color ?? Palette.primary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            elevation: 0,
            shadowColor: Colors.transparent),
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: _setButtonTitleStyle(),
        ),
      ),
    );
  }

  TextStyle _setButtonTitleStyle() {
    if (buttonTitleStyle == null) {
      return TextStyle(
        fontSize: buttonTitleFontSize,
        color: buttonTitleColor,
        fontWeight: buttonTitleFontWeight,
      );
    } else {
      return buttonTitleStyle!;
    }
  }
}

Widget gradiantButton({required String text, required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      height: 44.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        gradient: const LinearGradient(
          colors: [
            Palette.primary,
            Color(0xff1A4170),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.w600, color: Palette.white),
      ),
    ),
  );
}
