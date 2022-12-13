import 'package:bobal/bobalbenefits.dart';
import 'package:bobal/menu_enter.dart';
import 'package:bobal/orderhistory.dart';
import 'package:bobal/socialmedia.dart';
import 'package:flutter/material.dart';

class MyMenuPage extends StatelessWidget {
  const MyMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MyMenu(),
                  ),
                );
              },
              child: const SizedBox(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Color(0xffF47500),
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 5,
              width: 48,
              decoration: const BoxDecoration(
                color: Color.fromARGB(42, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (a) => const MyBenefits(),
                  ),
                );
              },
              child: const Text(
                'Bobals Benefits',
                style: TextStyle(
                  color: Color(0xffF47500),
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 5,
              width: 48,
              decoration: const BoxDecoration(
                color: Color.fromARGB(42, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (a) => const MyOrderHistory(),
                  ),
                );
              },
              child: const Text(
                'Order History',
                style: TextStyle(
                  color: Color(0xffF47500),
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 5,
              width: 48,
              decoration: const BoxDecoration(
                color: Color.fromARGB(42, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => const MySocialPage(),
                  ),
                );
              },
              child: const Text(
                'Social Media',
                style: TextStyle(
                  color: Color(0xffF47500),
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
