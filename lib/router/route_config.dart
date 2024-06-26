import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthyme/features/home/presentation/pages/home_page.dart';
import 'package:healthyme/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:healthyme/features/login/presentation/pages/login_page.dart';
import 'package:healthyme/features/try.dart';
import 'package:healthyme/features/try_name.dart';
import 'package:healthyme/main_scaffold.dart';
import 'package:healthyme/router/router_constant.dart';
import 'package:healthyme/router/router_url.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

class MyAppRouter {
  final GoRouter router;
  MyAppRouter()
      : router = GoRouter(
          navigatorKey: _rootNavigatorKey,
          initialLocation: '/',
          routes: [
            StatefulShellRoute.indexedStack(
              builder: (context, state, child) {
                return MainScaffold(
                    key: const ValueKey('MainScaffold'), child: child);
              },
              branches: [
                StatefulShellBranch(
                  navigatorKey: _sectionNavigatorKey,
                  routes: [
                    GoRoute(
                      name: MyAppRouteConstants.homeRouteName,
                      path: MyAppRouteUrl.homeRouteName,
                      pageBuilder: (context, state) {
                        return NoTransitionPage(child: const HomePage());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.loginRouteName,
                      path: MyAppRouteUrl.loginRouteName,
                      pageBuilder: (context, state) {
                        return NoTransitionPage(child: const LoginPage());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.dashboardRouteName,
                      path: MyAppRouteUrl.dashboardRouteName,
                      pageBuilder: (context, state) {
                        return NoTransitionPage(child: const DashboardPage());
                      },
                    ),
                    GoRoute(
                      name: MyAppRouteConstants.logoutRouteName,
                      path: MyAppRouteUrl.logoutRouteName,
                      pageBuilder: (context, state) {
                        return NoTransitionPage(child: const LoginPage());
                      },
                    ),
                    GoRoute(
                        name: MyAppRouteConstants.tryRouteName,
                        path: MyAppRouteUrl.tryRouteName,
                        pageBuilder: (context, state) {
                          final id = state.pathParameters["id"];
                          return NoTransitionPage(child: Try(id: id ?? ""));
                        },
                        routes: [
                          GoRoute(
                            path: 'try-name',
                            builder: (context, state) {
                              return const TryName();
                            },
                          ),
                        ]),
                  ],
                )
              ],
            ),
          ],
        );
}

class NoTransitionPage extends CustomTransitionPage<void> {
  NoTransitionPage({required Widget child})
      : super(
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          },
        );
}
