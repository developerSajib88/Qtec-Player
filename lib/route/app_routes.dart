import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:qtec_player/presentation/presentation.dart';

class AppRoutes{

  static GoRouter routes = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: SplashScreen.path,
      redirect: (BuildContext context, GoRouterState state){
        return null;
      },
      routes: [

        //Splash Screen Route
        // And Initial route
        GoRoute(
          path: SplashScreen.path,
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
                key: state.pageKey,
                child: const SplashScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                    CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
            );
          },
        ),


        //Home Screen Route
        GoRoute(
          path: HomeScreen.path,
          name: HomeScreen.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
                key: state.pageKey,
                child: const HomeScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                    CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
            );
          },
          routes: [

            //Video view Screen Route
            GoRoute(
              path: "${VideoViewScreen.path}/:videoIndex",
              name: VideoViewScreen.name,
              pageBuilder: (context, state) {
                return CustomTransitionPage<void>(
                    key: state.pageKey,
                    child: VideoViewScreen(videoIndex: int.parse(state.pathParameters["videoIndex"] ?? "0")),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                        CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
                );
              },
            ),
          ]
        ),




      ]
  );
}