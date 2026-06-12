import 'package:awzany/core/dep_injection/dep_injection.dart' as sl;
import 'package:awzany/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'awzany_app.dart';

void main() async {
  //ensure that all widgets are initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();

  //ensure that the screen size is initialized
  await ScreenUtil.ensureScreenSize();

  //ensure that the dependency injection is initialized
  await sl.configureDepInjections();

  runApp(AwzanyApp(appRouter: AppRoute()));
}
