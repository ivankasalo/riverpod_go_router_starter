// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:

// Project imports:

part 'router_listenable.g.dart';

@riverpod
class RouterListenable extends _$RouterListenable implements Listenable {
  VoidCallback? _routerListener;
  bool _isAuth = true;

  @override
  FutureOr<void> build() {
    ref.listenSelf((_, __) {
      // One could write more conditional logic for when to call redirection
      if (state.isLoading) return;

      _routerListener?.call();
    });

    // change _isAuth if some condition needed
    // return;
  }

  /// Redirects the user when our authentication changes
  Future<String?> redirect(BuildContext context, GoRouterState state) async {
    // if (this.state.isLoading || this.state.hasError) return null;

    // final isPasswordReset = state.location == PasswordResetRoute.path;
    // final isSplash = state.location == SplashRoute.path;
    // final isLoggingIn = state.location == AuthRoute.path;

    // if (!_isAuth) return AuthRoute.path;

    // if (isSplash || isLoggingIn) {
    //   return await getRedirectPath(state);
    // }

    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
