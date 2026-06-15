import 'package:awzany/core/helper/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/network/local/shared_pref.dart';
import '../../../../core/dep_injection/dep_injection.dart';
import '../../../../core/router/app_routes.dart';

class EntryGate extends StatefulWidget {
  const EntryGate({super.key});

  @override
  State<EntryGate> createState() => _EntryGateState();
}

class _EntryGateState extends State<EntryGate> {

  @override
  void initState() {
    super.initState();
    _checkFirstTimeOpenApp();
  }

  Future<void> _checkFirstTimeOpenApp() async {
    final storage = sl<LocalStorageService>();
    final isFirst = await storage.isFirstTime();


    if (isFirst) {
      await storage.setNotFirstTime();
      if (!mounted) return;
      context.pushReplacementNamed(AppRoutes.onboardingScreens);
    } else {
      if (!mounted) return;
      context.pushReplacementNamed(AppRoutes.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CupertinoActivityIndicator()),
    );
  }
}