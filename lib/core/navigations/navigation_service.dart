import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationService {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
  NavigatorState? get currentState => _navigationKey.currentState;

  GlobalKey<NavigatorState> get navigationKey => _navigationKey;

  void pop() {
    return currentState!.pop();
  }

  Future<dynamic> navigateTo(String routeName, {Object? arguments}) {
    return currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> clearLastAndNavigateTo(String routeName,
      {Object? arguments}) {
    return currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> removeAllAndNavigateTo(
    String routeName, {
    Object? arguments,
    bool Function(Route<dynamic>)? predicate,
  }) {
    return currentState!.pushNamedAndRemoveUntil(
      routeName,
      predicate ?? (r) => false,
      arguments: arguments,
    );
  }
}
