import 'package:farmers_market/src/styles/base.dart';
import 'package:farmers_market/src/styles/colors.dart';
import 'package:farmers_market/src/styles/text.dart';
import 'package:flutter/material.dart';

abstract class TextFieldStyles {
  static double get textBoxHorizontal => 25.0;

  static double get textBoxVertical => 8.0;

  static TextStyle get text => TextStyles.body;

  static TextStyle placeholder() {
    return TextStyles.suggestion;
  }

  static Color get cursorColor => AppColors.darkblue();

  static Widget iconPrefix(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        iconData,
        size: 35.0,
        color: AppColors.lightblue(),
      ),
    );
  }

  static TextAlign get textAlign => TextAlign.center;

  static BoxDecoration get cuppertinoDecoration {
    return BoxDecoration(
        border:
            Border.all(color: AppColors.straw(), width: BaseStyle.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyle.borderRaidis));
  }

  static InputDecoration materialDecoration(String hintText, IconData icon) {
    return InputDecoration(
        contentPadding: EdgeInsets.all(8.0),
        hintText: hintText,
        hintStyle: TextFieldStyles.placeholder(),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.straw(), width: BaseStyle.borderWidth),
            borderRadius: BorderRadius.circular(BaseStyle.borderRaidis)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.straw(), width: BaseStyle.borderWidth),
            borderRadius: BorderRadius.circular(BaseStyle.borderRaidis)),
        prefixIcon: iconPrefix(icon));
  }
}
