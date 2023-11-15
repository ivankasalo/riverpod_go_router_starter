// Flutter imports:
import 'package:almighty_app/common/helpers/navigator_key.dart';
import 'package:almighty_app/main/router/router_listenable.dart';
import 'package:almighty_app/main/router/routes.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final notifier = ref.watch(routerListenableProvider.notifier);

  return useMemoized(
      () => GoRouter(
            initialLocation: '/', // SplashRoute.path
            navigatorKey: ref.read(navigatorKeyProvider),
            refreshListenable: notifier,
            debugLogDiagnostics: true,
            redirect: notifier.redirect,
            routes: appRoutes,
          ),
      [notifier]);
}
