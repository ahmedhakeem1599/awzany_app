import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/constrants/app_colors.dart';
import '../core/themes/text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.radius,
    this.textStyle,
    this.color,
    this.borderColor,
    this.borderWidth,
  });

  final String text;
  final Function()? onTap;
  final double? radius;
  final TextStyle? textStyle;
  final Color? color;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(radius ?? 18),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryShadow,
              blurRadius: 8,
              offset: const Offset(0, 3)
            ),
          ]
        ),
        alignment: Alignment.center,
        child: Text(text, style: textStyle ?? TextStyles.font22PrimarySemiBold),
      ),
    );
  }
}