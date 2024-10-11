import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash%20Screen/HomePage.dart';
import 'package:flutter_application_1/Splash%20Screen/SplashScreen.dart';
import 'package:flutter_application_1/Splash%20Screen/authentication.dart';
import 'package:flutter_application_1/login/login.dart';

class RoutesName {
  static const String home = '/home';
  static const String login = '/login';
  static const String splash = '/splash';
  static const String authentication = '/authentication';
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.home:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutesName.splash:
      return MaterialPageRoute(builder: (context) => const SplashPage());
    case RoutesName.login:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case RoutesName.authentication:
      return MaterialPageRoute(
          builder: (context) => const AuthenticationPage());

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
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}
