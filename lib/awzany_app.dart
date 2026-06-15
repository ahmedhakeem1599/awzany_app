import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/constrants/app_colors.dart';
import 'core/router/app_router.dart';


class AwzanyApp extends StatelessWidget {
  final AppRoute appRouter;
  const AwzanyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          title: 'Awzany',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.black,
          ),
          home: child,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
