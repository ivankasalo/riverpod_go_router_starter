// Flutter imports:
import 'package:almighty_app/common/helpers/scaffold_messenger_key.dart';
import 'package:almighty_app/main/router/router.dart';
import 'package:almighty_app/main/themes.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StarterApp extends HookConsumerWidget {
  const StarterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      scaffoldMessengerKey: ref.read(scaffoldMessengerKeyProvider),
      routerConfig: router,
      title: 'Flutter Starter',
      themeMode: ThemeMode.system,
      darkTheme: AppThemes.darkTheme,
      theme: AppThemes.lightTheme,
    );
  }
}
