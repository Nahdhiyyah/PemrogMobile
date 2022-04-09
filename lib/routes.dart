import 'package:flutter/material.dart';
import 'komponen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/profil':
        return MaterialPageRoute(builder: (_) => Profil());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/contactUs':
        return MaterialPageRoute(builder: (_) => ContactUs());
      case '/setting':
        return MaterialPageRoute(builder: (_) => Setting());
      case '/galery':
        return MaterialPageRoute(builder: (_) => Galery());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          backgroundColor: Colors.black,
        ),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
