// Flutter imports:
import 'package:flutter/material.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(57, 137, 201, 1),
);

final kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromRGBO(9, 139, 107, 1),
);

class AppThemes {
  static ThemeData get lightTheme => ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        // scaffoldBackgroundColor: const Color.fromRGBO(228, 233, 239, 1),
        cardColor: kColorScheme.onSurfaceVariant.withOpacity(0.45),
        chipTheme: const ChipThemeData().copyWith(
          backgroundColor: kColorScheme.outline,
          labelStyle: const TextStyle().copyWith(
            color: kColorScheme.onPrimary,
          ),
          selectedColor: kColorScheme.primary,
          checkmarkColor: kColorScheme.onPrimary,
        ),
        textTheme: ThemeData().textTheme.copyWith(),
        appBarTheme: const AppBarTheme().copyWith(),
        buttonTheme: ThemeData().buttonTheme.copyWith(),
        cardTheme: const CardTheme().copyWith(
          clipBehavior: Clip.hardEdge,
          elevation: 1,
          color: kColorScheme.onInverseSurface,
          shadowColor: kColorScheme.onSecondaryContainer,
          surfaceTintColor: ThemeData.light().primaryColorDark,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(),
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData().copyWith(
                // backgroundColor: kColorScheme.primary,
                // foregroundColor: kColorScheme.onPrimary,
                ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              // backgroundColor: kColorScheme.primary,
              // foregroundColor: kColorScheme.onPrimary,
              ),
        ),
        canvasColor: kColorScheme.onPrimary,
        dropdownMenuTheme: const DropdownMenuThemeData().copyWith(
          textStyle: const TextStyle().copyWith(
            color: kColorScheme.onPrimary,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        chipTheme: const ChipThemeData().copyWith(),
        textTheme: ThemeData.dark().textTheme.copyWith(
            // overrides
            ),
        appBarTheme: const AppBarTheme().copyWith(
            // color: kDarkColorScheme.background,
            ),
        buttonTheme: ThemeData.dark().buttonTheme.copyWith(),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(),
        ),
        cardTheme: const CardTheme().copyWith(
          elevation: 0,
          surfaceTintColor: kDarkColorScheme.primaryContainer,
          // color: kColorScheme.onInverseSurface,
          // color: kDarkColorScheme.onInverseSurface.withOpacity(0.7),
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData().copyWith(
                // backgroundColor: kDarkColorScheme.primary,
                // foregroundColor: kDarkColorScheme.onBackground,
                ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              // backgroundColor: kDarkColorScheme.primary,
              // foregroundColor: kDarkColorScheme.onPrimary,
              ),
        ),
      );
}
