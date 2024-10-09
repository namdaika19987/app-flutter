import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash%20Screen/HomePage.dart';
import 'package:flutter_application_1/Splash%20Screen/SplashScreen.dart';
import 'package:flutter_application_1/login/login.dart';

class RoutesName {
  static const String home = '/home';
  static const String login = '/login';
  static const String splash = '/splash';
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.home:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutesName.splash:
      return MaterialPageRoute(builder: (context) => const SplashPage());
    case RoutesName.login:
      return MaterialPageRoute(builder: (context) => const LoginPage());

    // // Handle a route with arguments
    // case '/profile':
    //   final args = settings.arguments as ProfilePageArguments;
    //   return MaterialPageRoute(
    //     builder: (context) => ProfilePage(
    //       username: args.username,
    //       age: args.age,
    //     ),
    //   );
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
