import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constrants/app_colors.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/text_styles.dart';

class LoginWithBotton extends StatelessWidget {
  const LoginWithBotton({super.key , required this.imagePath, required this.text});
  final String imagePath;
  final String text;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.silverGray),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              width: 32.w,
              height: 32.h,
            ),
            horizontalSpace(16),
            Text(
              text,
              style: TextStyles.font16SilverRegular,
            ),
          ],
        ),
      ),
    );
  }
}
