import 'package:almighty_app/common/constants/constants.dart';
import 'package:almighty_app/common/enums/enums.dart';
import 'package:almighty_app/common/helpers/navigator_key.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_type_provider.g.dart';

/// Provider used to return a [ScreenType] based on the width of the device.
/// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
@riverpod
ScreenType screenType(ScreenTypeRef ref, {bool useContext = true}) {
  late MediaQueryData mediaQueryData;
  if (useContext) {
    final buildContext = ref.watch(navigatorKeyStateProvider).context;
    if (!buildContext.mounted) return ScreenType.mobile;
    mediaQueryData = MediaQuery.of(buildContext);
  } else {
    mediaQueryData = MediaQueryData.fromView(
        (WidgetsBinding.instance.platformDispatcher.views.single));
  }
  final deviceWidth = mediaQueryData.size.shortestSide;

  if (deviceWidth > ScreenBreakpoint.desktop) return ScreenType.desktop;
  if (deviceWidth > ScreenBreakpoint.tablet) return ScreenType.tablet;
  if (deviceWidth > ScreenBreakpoint.mobile) return ScreenType.mobile;
  return ScreenType.watch;
}
