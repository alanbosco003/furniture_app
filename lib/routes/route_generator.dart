import 'package:flutter/material.dart';
import 'package:furniture_app/screens/detailed_screen.dart';
import 'package:furniture_app/screens/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home_Page());
      case '/dtl_scrn':
        return MaterialPageRoute(builder: (_) => Detailed_page());
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          body: Container(
              color: Colors.white,
              child: Center(
                child: Text("Unexpected error happend"),
              )));
    });
  }
}
