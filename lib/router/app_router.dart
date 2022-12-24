import 'package:flutter/material.dart';
import 'package:game/pages/detail_page/detail_page.dart';
import 'package:game/pages/home/home_page.dart';
import 'package:game/router/app_arguments.dart';

class AppRoutes {
  static const homePage = "/home-page";
  static const detailPage = "/detail-page";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case detailPage:
        final detailPageArguments = settings.arguments as DetailPageArguments;
        return MaterialPageRoute(
          builder: (_) => DetailPage(gameId: detailPageArguments.id),
          settings: settings,
        );
      default:
        return null;
    }
  }
}
