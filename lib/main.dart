import 'package:flutter/material.dart';
import 'package:flutter_application_1/RouteGenerator.dart';
import 'package:flutter_application_1/login/login.dart';

void main() {
  // runApp(const MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // bỏ chữ debug trên đầu app
      title: 'App Food',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: RoutesName.login, // màn mặc định đầu tiên của ứng dụng
      onGenerateRoute: onGenerateRoute, //gửi tất cả các router (navigation)
    );
  }
}
