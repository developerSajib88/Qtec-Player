import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qtec_player/route/app_routes.dart';

class QtecPlayerApp extends HookConsumerWidget {
  const QtecPlayerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const ScrollBehavior().copyWith(physics: const BouncingScrollPhysics()),
        routerConfig: AppRoutes.routes,
      ),
    );
  }
}
