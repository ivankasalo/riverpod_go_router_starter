// Flutter imports:
import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scaffold_messenger_key.g.dart';

@riverpod
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
        ScaffoldMessengerKeyRef ref) =>
    GlobalKey<ScaffoldMessengerState>();

@riverpod
ScaffoldMessengerState scaffoldMessengerKeyState(
        ScaffoldMessengerKeyStateRef ref) =>
    ref.watch(scaffoldMessengerKeyProvider).currentState!;
