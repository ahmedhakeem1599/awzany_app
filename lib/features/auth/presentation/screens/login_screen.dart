import 'package:awzany/core/helper/spacing.dart';
import 'package:awzany/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/constrants/app_assets.dart';
import '../../../../core/constrants/app_strings.dart';
import '../widgets/login_with_botton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  stops: [0.0, 0.4],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                AppAssets.loginImage,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [

                      verticalSpace(80),

                      Text(AppStrings.welcome, style: TextStyles.font32LightGrayBold),

                      verticalSpace(12),

                      Text(AppStrings.welcomeDesc, style: TextStyles.font16SilverRegular),

                      verticalSpace(232),

                      LoginWithBotton(
                        imagePath: AppAssets.googleLogo,
                        text: AppStrings.loginWithGoogle,
                      ),

                      verticalSpace(18),

                      LoginWithBotton(
                        imagePath: AppAssets.appleLogo,
                        text: AppStrings.loginWithApple,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
