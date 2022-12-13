import 'package:bobal/fake_page.dart';
import 'package:bobal/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    List<Model> info = [
      Model(
        name: 'Coffee',
        price: 20,
        image: 'https://source.unsplash.com/random/${counter + 1}',
        title: 'Coffee',
      ),
      Model(
        name: 'Soda',
        price: 28,
        image: 'https://source.unsplash.com/random/${counter + 2}',
        title: 'Coffee',
      ),
      Model(
        name: 'Milk Tea',
        price: 18,
        image: 'https://source.unsplash.com/random/${counter + 3}',
        title: 'Coffee',
      ),
      Model(
        name: 'Latte',
        price: 15,
        image: 'https://source.unsplash.com/random/${counter + 4}',
        title: 'Coffee',
      ),
      Model(
        name: 'Americano',
        price: 25,
        image: 'https://source.unsplash.com/random/${counter + 5}',
        title: 'Coffee',
      ),
      Model(
        name: 'Arabica',
        price: 10,
        image: 'https://source.unsplash.com/random/${counter + 6}',
        title: 'Coffee',
      ),
      Model(
        name: 'Coffee 2x',
        price: 12,
        image: 'https://source.unsplash.com/random/${counter + 7}',
        title: 'Coffee',
      ),
      Model(
        name: 'Black',
        price: 14,
        image: 'https://source.unsplash.com/random/${counter + 8}',
        title: 'Coffee',
      ),
    ];
    
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 25),
              child: SizedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 21,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: const [
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Color(0xffF47500),
                      fontSize: 48,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                  itemCount: info.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                        onTap: () {
                          counter += 1;
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => MyFakePage(
                                title: info[index].title,
                                image: info[index].image,
                                name: info[index].name,
                                price: info[index].price,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          height: 67,
                          color: const Color(0xffF47500),
                          child: Row(
                            children: [
                              const SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 8),
                                  Text(
                                    info[index].name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Include Topping+ 2k for jahe',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 60),
                              Row(
                                children: [
                                  Text(
                                    '${info[index].price}K',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ));
                  })),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
