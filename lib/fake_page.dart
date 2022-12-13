import 'package:flutter/material.dart';

class MyFakePage extends StatefulWidget {
  final String name;
  final int price;
  final String image;
  final String title;

  const MyFakePage({
    required this.name,
    required this.title,
    required this.price,
    required this.image,
    super.key,
  });

  @override
  State<MyFakePage> createState() => _MyFakePageState();
}

class _MyFakePageState extends State<MyFakePage> {
  int counter = 0;
  int thatprice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 63,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.image),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 100),
                      Text(
                        widget.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                if (counter == 0) {
                                  thatprice = widget.price;
                                  setState(() {});
                                } else {
                                  thatprice -= widget.price;
                                  counter -= 1;
                                }
                                setState(() {});
                              },
                              child: const SizedBox(
                                child: Text('--'),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 28,
                              child: Center(
                                child: Text('$counter'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                counter++;
                                thatprice += widget.price;
                                setState(() {});
                              },
                              child: const Text('+'),
                            ),
                            const SizedBox(width: 5)
                          ],
                        ),
                      ),
                      Container(
                        width: 136,
                        height: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xffF47500),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '$thatprice',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 60)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
