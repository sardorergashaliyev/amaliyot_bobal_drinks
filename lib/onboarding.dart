import 'package:bobal/login.dart';
import 'package:flutter/material.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({super.key});

  @override
  State<MyOnboarding> createState() => _MyOnboardingState();
}

class _MyOnboardingState extends State<MyOnboarding> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (a) => const MyApp(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: Column(
        children: [
          const SizedBox(height: 100,),
          Center(
            child: SizedBox(
              height: 400,
              width: 250,
              child: Image.asset('assets/bobal1.png'),
            ),
          ),
          const Text(
            'Wellcome',
            style: TextStyle(
              color: Color(0xffF47500),
              fontSize: 24
            ),
          )
        ],
      ),
    );
  }
}
