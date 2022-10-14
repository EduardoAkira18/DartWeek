import 'package:flutter/material.dart';

import 'colors_app.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secundaryFont => 'MPlus1P';

  //primary font
  TextStyle get textPrimaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: primaryFont);

  TextStyle get textPrimaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: primaryFont);

  TextStyle get textPrimaryFontSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: primaryFont);

  TextStyle get textPrimaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: primaryFont);

  TextStyle get textPrimaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: primaryFont);

  // secundary font
  TextStyle get textSecondaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: secundaryFont);

  TextStyle get textSecondaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: secundaryFont);

  TextStyle get textSecondaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: secundaryFont);

  TextStyle get textSecondaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: secundaryFont);

  TextStyle get labelTextField => textSecondaryFontRegular.copyWith(
        color: ColorsApp.i.greyDart,
      );

  TextStyle get textSecondaryFontExtraBoldPrimaryColor =>
      textSecondaryFontExtraBold.copyWith(color: ColorsApp.i.primary);

  TextStyle get tittleWhite =>
      textPrimaryFontBold.copyWith(color: Colors.white, fontSize: 22);

  TextStyle get titleBlack =>
      textPrimaryFontBold.copyWith(color: Colors.black, fontSize: 22);
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
