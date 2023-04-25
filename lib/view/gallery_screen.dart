import 'package:flutter/material.dart';

import '../data/ap_data.dart';
import '../res/common/app_shoes_category.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              const Text('Shop',
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w800)),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFFCCCCCC),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search, color: Colors.white),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 53,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'New',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFFCCCCCC),
                            fontFamily: 'Sofia Sans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 53,
                      width: 121,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'Basketball',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFFCCCCCC),
                            fontFamily: 'Sofia Sans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 53,
                      width: 104,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'Running',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFFCCCCCC),
                            fontFamily: 'Sofia Sans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 53,
                      width: 89,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'Casual',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFFCCCCCC),
                            fontFamily: 'Sofia Sans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 53,
                      width: 86,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'Hiking',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFFCCCCCC),
                            fontFamily: 'Sofia Sans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 53,
                      width: 123,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'View more',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFFCCCCCC),
                            fontFamily: 'Sofia Sans',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('Showing page ',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const Text('1 ',
                      style: TextStyle(color: Color(0xff02C0FC), fontSize: 20)),
                  const Text('out of ',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const Text('2',
                      style: TextStyle(color: Color(0xff02C0FC), fontSize: 20)),
                  const SizedBox(
                    width: 60,
                  ),
                  Image.asset(
                    'assets/image/Filter.png',
                    height: 40,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 485,
                width: 355,
                child: ListView.separated(
                  itemCount: shoesList.length,
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 15,
                  ),
                  itemBuilder: (context, index) => AppShoesCategoryCommon(
                    price: true,
                    image: shoesList[index].image,
                    shoesName: shoesList[index].shoesName,
                    subTitles: shoesList[index].subtitles,
                    prices: shoesList[index].prices,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'search',
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Bag',
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.black87),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
