import 'package:bobal/menu.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff233F3A),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const SizedBox(
              width: 250,
              height: 373,
              child: Image(
                image: AssetImage('assets/bobal1.png'),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            SizedBox(
              height: 26,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 0, left: 22),
                    filled: true,
                    fillColor: const Color(0xffF47500),
                    hintText: 'Username: ',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Color(0xffA7A7A7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    errorBorder: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            SizedBox(
              height: 26,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 0, left: 22),
                    filled: true,
                    fillColor: const Color(0xffF47500),
                    hintText: 'Password: ',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Color(0xffA7A7A7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    errorBorder: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 19,
              width: double.infinity,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const MyMenuPage()));
              },
              child: Container(
                height: 44,
                width: 112,
                decoration: const BoxDecoration(
                  color: Color(0xffF47500),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
