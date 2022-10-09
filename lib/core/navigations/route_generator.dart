import 'package:blood_bank/Dashboard/dashboard_page.dart';
import 'package:blood_bank/core/navigations/route_animations.dart';
import 'package:blood_bank/core/navigations/route_paths.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.hospitalDashboard:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HospitalDashboardPage(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

Route _getPageRoute({
  String? routeName,
  Widget? viewToShow,
}) {
  return PageRoutes.platform(
    settings: RouteSettings(name: routeName),
    builder: (context) => viewToShow!,
  );
}
