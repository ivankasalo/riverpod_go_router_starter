// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigator_key.g.dart';

@riverpod
GlobalKey<NavigatorState> navigatorKey(NavigatorKeyRef ref) {
  return GlobalKey<NavigatorState>();
}

@riverpod
NavigatorState navigatorKeyState(NavigatorKeyStateRef ref) {
  return ref.watch(navigatorKeyProvider).currentState!;
}
