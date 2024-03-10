// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shellBottomNavBarRoute,
    ];

RouteBase get $shellBottomNavBarRoute => ShellRouteData.$route(
      navigatorKey: ShellBottomNavBarRoute.$navigatorKey,
      factory: $ShellBottomNavBarRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          parentNavigatorKey: HomeRoute.$parentNavigatorKey,
          factory: $HomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'add_task',
              parentNavigatorKey: AddTaskRoute.$parentNavigatorKey,
              factory: $AddTaskRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/new_task',
          parentNavigatorKey: NewTaskRoute.$parentNavigatorKey,
          factory: $NewTaskRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/done_task',
          parentNavigatorKey: DoneTaskRoute.$parentNavigatorKey,
          factory: $DoneTaskRouteExtension._fromState,
        ),
      ],
    );

extension $ShellBottomNavBarRouteExtension on ShellBottomNavBarRoute {
  static ShellBottomNavBarRoute _fromState(GoRouterState state) =>
      ShellBottomNavBarRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddTaskRouteExtension on AddTaskRoute {
  static AddTaskRoute _fromState(GoRouterState state) => AddTaskRoute();

  String get location => GoRouteData.$location(
        '/add_task',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewTaskRouteExtension on NewTaskRoute {
  static NewTaskRoute _fromState(GoRouterState state) => NewTaskRoute();

  String get location => GoRouteData.$location(
        '/new_task',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DoneTaskRouteExtension on DoneTaskRoute {
  static DoneTaskRoute _fromState(GoRouterState state) => DoneTaskRoute();

  String get location => GoRouteData.$location(
        '/done_task',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
