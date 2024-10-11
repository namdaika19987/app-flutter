import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 469,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFA451), // Màu nền của hình ảnh
                    // borderRadius: BorderRadius.circular(16), // Bo góc nếu cần
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        16), // Bo góc cho hình ảnh khớp với container
                    child: Image.asset(
                      'assets/food2.png',
                      width: 301,
                      height: 260,
                      fit: BoxFit
                          .scaleDown, // Đảm bảo hình ảnh chiếm toàn bộ vùng Container
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Positioned(
                child: Container(
                  width: 327, // width 327px
                  height: 199, // height 199px
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), // Bo góc trái trên
                    ),
                    color: Colors
                        .transparent, // Đặt màu nền transparent (transparent là không hiển thị màu nền)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get The Freshest Fruit Salad Combo',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'We deliver best on freshest fruit salad in town. Order for a combo today!!!',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left, // Căn giữa văn bản
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          backgroundColor: const Color(
                              0xFFFFA451), // Màu nền của nút bằng mã hex
                        ),
                        child: const Text(
                          'Let\'s Continue',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
