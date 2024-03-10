part of "routing.dart";

mixin _CustomTransitionPageMixin on GoRouteData {
  Page<void> buildCustomTransitionPage(
    BuildContext context,
    GoRouterState state,
    Widget child,
  ) {
    if (kIsWeb) {
      return CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
        child: child,
      );
    }

    return MaterialPage(key: state.pageKey, child: child);
  }
}
