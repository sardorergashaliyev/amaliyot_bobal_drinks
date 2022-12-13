import 'package:flutter/material.dart';

class MyBenefits extends StatelessWidget {
  const MyBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 25),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  children: const [
                    Text(
                      'Our Information',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffF47500),
                      ),
                    ),
                    Text(
                      'Bobals Benefits',
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xffF47500),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Color.fromARGB(104, 255, 255, 255),
            ),
            SizedBox(
              height: 430,
              child: Stack(
                children: [
                  Positioned(
                    left: 15,
                    child: SizedBox(
                      height: 166,
                      width: 200,
                      child: Image.asset('assets/2.png'),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    left: 15,
                    child: SizedBox(
                      height: 166,
                      width: 200,
                      child: Image.asset('assets/3.png'),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    right: 10,
                    child: SizedBox(
                      height: 166,
                      width: 200,
                      child: Image.asset('assets/1.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                '''- meningkatkan daya tahan tubuh dan nafsu makan
- mencegah risiko gagal jantung dan kanker
- meredakan mual dan batuk
- memperlancar sirkulasi darah
- membantu proses detoksifikasi''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
