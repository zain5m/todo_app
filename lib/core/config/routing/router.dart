part of "routing.dart";

GoRouter router = GoRouter(
  routes: $appRoutes,
  initialLocation: HomeRoute().location,
  navigatorKey: _rootKey,
  // redirect: (context, state) {
  //   Dev.console([state.matchedLocation]);
  //   // return state.matchedLocation.isEmpty ? HomeRoute().location : null;
  // },
  observers: [
    CustomNavigationObserver(),
  ],
);
final _rootKey = GlobalKey<NavigatorState>();
final _navKey = GlobalKey<NavigatorState>();

@TypedShellRoute<ShellBottomNavBarRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/',
      routes: [
        TypedGoRoute<AddTaskRoute>(path: 'add_task'),
      ],
    ),
    TypedGoRoute<NewTaskRoute>(path: '/new_task'),
    TypedGoRoute<DoneTaskRoute>(path: '/done_task')
  ],
)
class ShellBottomNavBarRoute extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = _navKey;

  @override
  Page<void> pageBuilder(
      BuildContext context, GoRouterState state, Widget navigator) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: BottomNavBarLayout(child: navigator),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // return RotationTransition(turns: animation, child: child);
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeIn).animate(animation),
          child: child,
        );
      },
    );
  }
}

class HomeRoute extends GoRouteData with _CustomTransitionPageMixin {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = _navKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    const child = HomeScreen();

    return buildCustomTransitionPage(context, state, child);
  }
}

class AddTaskRoute extends GoRouteData with _CustomTransitionPageMixin {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = _rootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    const child = AddTaskScreen();
    return buildCustomTransitionPage(context, state, child);
  }
}

class NewTaskRoute extends GoRouteData with _CustomTransitionPageMixin {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = _navKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    const child = NewTaskScreen();

    return buildCustomTransitionPage(context, state, child);
  }
}

class DoneTaskRoute extends GoRouteData with _CustomTransitionPageMixin {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = _navKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    const child = DoneTaskScreen();

    return buildCustomTransitionPage(context, state, child);
  }
}

// return CustomTransitionPage(
//   key: state.pageKey,
//   child: DetailsScreen(id: id),
//   transitionsBuilder: (context, animation, secondaryAnimation, child) {
//     return RotationTransition(turns: animation, child: child);
//     // return FadeTransition(
//     //   opacity: CurveTween(curve: Curves.easeIn).animate(animation),
//     //   child: child,
//     // );
//   },
// );
