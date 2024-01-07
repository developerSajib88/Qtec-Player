import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qtec_player/route/app_routes.dart';

class QtecPlayerApp extends HookConsumerWidget {
  const QtecPlayerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    /// Screen util is used for make
    /// Pixel perfect responsive
    /// User Interface according with screen height and width
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.routes,
      ),
    );
  }
}
