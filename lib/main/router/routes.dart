import 'package:almighty_app/main/main.dart';
import 'package:almighty_app/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> appRoutes = [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const HomeView();
    },
  ),
];
