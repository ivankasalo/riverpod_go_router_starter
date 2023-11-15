import 'package:almighty_app/common/helpers/shared_preferences.dart';
import 'package:almighty_app/main/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  final providerContainer = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(sharedPreferences),
    ],
  );

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const StarterApp(),
    ),
  );
}
