import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constrants/app_colors.dart';
import '../helper/font_weight_helper.dart';

class TextStyles {
  static TextStyle font16WhiteRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.white,
  );

  static TextStyle font28PrimaryBold = TextStyle(
    color: AppColors.primary,
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font22PrimarySemiBold = TextStyle(
    color: AppColors.white,
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

}
