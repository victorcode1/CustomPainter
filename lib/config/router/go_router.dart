import 'package:custom_pinter/main.dart';
import 'package:custom_pinter/page/header_circular.dart';
import 'package:custom_pinter/page/header_curvo.dart';
import 'package:custom_pinter/page/header_pico.dart';
import 'package:custom_pinter/page/header_triangular.dart';
import 'package:custom_pinter/page/header_wave.dart';
import 'package:custom_pinter/page/header_wave_gradient_painter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeWidget();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'header1',
          builder: (BuildContext context, GoRouterState state) {
            return const HeaderDiagonal();
          },
        ),
        GoRoute(
          path: 'header2',
          builder: (BuildContext context, GoRouterState state) {
            return const HeaderTriangular();
          },
        ),
        GoRoute(
          path: 'header3',
          builder: (BuildContext context, GoRouterState state) {
            return const HeaderPico();
          },
        ),
        GoRoute(
          path: 'header4',
          builder: (BuildContext context, GoRouterState state) {
            return const HeaderCurvo();
          },
        ),
        GoRoute(
          path: 'header5',
          builder: (BuildContext context, GoRouterState state) {
            return const HeaderWave();
          },
        ),
        GoRoute(
          path: 'header6',
          builder: (BuildContext context, GoRouterState state) {
            return const HeaderWaveGradient();
          },
        ),
      ],
    ),
  ],
);
