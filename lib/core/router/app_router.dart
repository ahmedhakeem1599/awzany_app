import 'package:awzany/core/router/app_routes.dart';
import 'package:awzany/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/screens/entry.dart';
import '../../features/auth/presentation/screens/onboarding/onboarding_screen.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.entryGate:
        return _buildRoute(
            EntryGate()
        );

      case AppRoutes.onboardingScreens:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen()
        );

      case AppRoutes.loginScreen:
        return _buildRoute(
            LoginScreen()
        );

      default:
        return _buildRoute(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }


  static PageRouteBuilder _buildRoute(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 250),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
