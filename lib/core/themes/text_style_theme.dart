import 'package:flutter/material.dart';

class TextStyleTheme{
  static const inkBrushArabicFont='InkBrushArabic';

  static TextStyle defaultTextStyle({FontWeight? fontWeight,double? fontSize,Color? color}){
    return TextStyle(fontWeight: fontWeight,fontSize: fontSize,color:color,fontFamily: inkBrushArabicFont);
  }

}

