import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash%20Screen/HomePage.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Sau 3 giây sẽ chuyển sang màn hình Home
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Màu nền của màn splash
      body: Stack(
        children: [
          Positioned(
            left: 95, // Cách mép trái 95px
            top: 303, // Cách mép trên 303px
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), // Bán kính bo góc trên trái
                bottomRight: Radius.circular(16), // Bán kính bo góc dưới phải
              ),
              child: Image.asset(
                'assets/splashscreen1.png', // Đường dẫn đến logo
                width: 184, // Chiều rộng 184px
                height: 205.05, // Chiều cao 205.05px
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 550), // Điều chỉnh vị trí của Text
              child: Text(
                'Welcome to MyApp',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black, // Chỉnh lại màu chữ cho hiển thị tốt hơn
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
