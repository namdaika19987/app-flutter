import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Container(
                  width: 375,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.orange, // Màu nền của hình ảnh
                    // borderRadius: BorderRadius.circular(16), // Bo góc nếu cần
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        16), // Bo góc cho hình ảnh khớp với container
                    child: Image.asset(
                      'assets/food1.png',
                      width: 301,
                      height: 260,
                      fit: BoxFit
                          .scaleDown, // Đảm bảo hình ảnh chiếm toàn bộ vùng Container
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Get The Freshest Fruit Salad Combo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'We deliver best on freshest fruit sald in town. Order for a combo today!!!',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Hành động bấm nút
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.blue, // Màu nền của nút
                ),
                child: const Text(
                  'Let s Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
