import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    required this.top,
    this.initialValue,
    this.controller,
    this.borderColor,
    this.suffixIcon,
    required this.focusNode,
    this.nextNode,
    this.prefixIcon,
    this.borderRadiusvalue,
    required this.textInputType,
    this.maxLength,
    this.maxLengthEnforcement,
    required this.onSaved,
    required this.validator,
    this.onChanged,
  }) : super(key: key);

  final String hint;
  final double top;
  final double? borderRadiusvalue;
  final Color? borderColor;
  final String? initialValue;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode focusNode;
  final FocusNode? nextNode;
  final TextInputType textInputType;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final FormFieldSetter<String> onSaved;
  final FormFieldSetter<String>? onChanged;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 46,
            width: double.infinity,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Palette.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: suffixIcon,
          ),
          TextFormField(
            initialValue: controller == null ? initialValue : null,
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadiusvalue ?? 0),
                borderSide: const BorderSide(
                  color: Palette.lightBlue,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadiusvalue ?? 0),
                borderSide: BorderSide(
                  color: borderColor ?? Palette.lightBlue,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadiusvalue ?? 0),
                borderSide: const BorderSide(
                  color: Palette.lightBlue,
                ),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: Palette.lightGrey,
                fontSize: 14.sp,
              ),
              prefixIcon: prefixIcon,
              contentPadding: EdgeInsets.only(
                left: 18.w,
                right: suffixIcon != null ? 45.w : 18.w,
              ),
            ),
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
            ),
            keyboardType: textInputType,
            focusNode: focusNode,
            textInputAction:
                nextNode != null ? TextInputAction.next : TextInputAction.done,
            maxLength: maxLength,
            maxLengthEnforcement: maxLengthEnforcement,
            buildCounter: emptyCounter,
            validator: validator,
            onSaved: onSaved,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget? emptyCounter(
    BuildContext context, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  }) {
    return const SizedBox();
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.readOnly = false,
    this.enabled = true,
    required this.top,
    this.initialValue,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.maxLength,
    this.maxLengthEnforcement,
    this.controller,
    this.focusNode,
    this.nextNode,
    this.onTap,
    this.inputFormatters,
    this.hintText,
    this.prefixText,
    this.suffixIcon,
    this.onChanged,
    this.textCapitalization = TextCapitalization.sentences,
    this.buildCounter,
    required this.textInputType,
    required this.onSaved,
    required this.validator,
    this.textStyle,
    this.obscureText = false,
  }) : super(key: key);

  final bool obscureText;
  final String? labelText;
  final bool readOnly;
  final bool enabled;
  final double top;
  final int? maxLines;
  final int? maxLength;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final String? initialValue;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextNode;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTap;
  final String? hintText;
  final String? prefixText;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      child: TextFormField(
        readOnly: readOnly,
        enabled: enabled,
        onTap: onTap,
        textCapitalization: textCapitalization,
        //maxLines: maxLines,
        maxLength: maxLength,
        maxLengthEnforcement: maxLengthEnforcement,
        buildCounter: buildCounter,
        initialValue: controller == null ? initialValue : null,
        controller: controller,
        focusNode: focusNode,
        keyboardType: textInputType,
        textInputAction:
            nextNode != null ? TextInputAction.next : TextInputAction.done,
        inputFormatters: inputFormatters,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        textAlign: textAlign,
        style: textStyle ??
            TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: Palette.black,
            ),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Palette.navyBlue,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Palette.navyBlue,
            ),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Palette.navyBlue,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
            color: Palette.lightViolet,
          ),
          prefixText: prefixText,
          prefixStyle: textStyle ??
              TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: Palette.lightViolet,
              ),
          suffixIcon: suffixIcon,
          label: labelText != null
              ? Container(
                  alignment:
                      textAlign == TextAlign.center ? Alignment.center : null,
                  child: Text(
                    "$labelText",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Palette.lightViolet.withOpacity(0.6),
                    ),
                  ),
                )
              : null,
          floatingLabelAlignment: textAlign == TextAlign.center
              ? FloatingLabelAlignment.center
              : null,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
