import 'package:flutter/material.dart';

import '../constant/app_images.dart';

class AppShoesCategoryCommon extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final String? shoesName;
  final String? subTitles;
  final String? prices;
  final bool? price;
  final bool? priceDown;
  final bool? newPic;

  const AppShoesCategoryCommon({
    Key? key,
    this.height,
    this.width,
    this.image,
    this.shoesName,
    this.price,
    this.priceDown,
    this.newPic,
    this.subTitles,
    this.prices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        height: height ?? 388,
        width: width ?? 274,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFCCCCCC),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 270),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Icon(Icons.more_vert, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(
                height: 190,
                width: 325,
                child: Image.asset(
                  image ?? AppImages.NAF,
                ),
              ),
              Text(
                shoesName ?? 'Nike Air Force 1 ‘07',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Sofia Sans',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  //first
                  if (price!) ...[
                    Container(
                      alignment: Alignment.center,
                      height: 38,
                      width: 62,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        prices ?? '\$350',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xFFCCCCCC),
                          fontFamily: 'Sofia Sans',
                        ),
                      ),
                    ),
                  ]

                  //second

                  else if (priceDown!) ...[
                    Container(
                      alignment: Alignment.center,
                      height: 38,
                      width: 113,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '\$170 \$148',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xFFCCCCCC),
                          fontFamily: 'Sofia Sans',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 38,
                      width: 82,
                      decoration: BoxDecoration(
                        color: const Color(0x1A7BBA3C),
                        border: Border.all(color: const Color(0xFF7BBA3C)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            '15%',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xFF7BBA3C),
                              fontFamily: 'Sofia Sans',
                            ),
                          ),
                          Image.asset(
                            AppImages.Downarrow,
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ]

                  //third

                  else if (newPic!) ...[
                    Container(
                      alignment: Alignment.center,
                      height: 38,
                      width: 52,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFCCCCCC)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '\$64',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xFFCCCCCC),
                          fontFamily: 'Sofia Sans',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 38,
                      width: 82,
                      decoration: BoxDecoration(
                        color: const Color(0x1A02C0FC),
                        border: Border.all(color: const Color(0xFF02C0FC)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'New',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xFF02C0FC),
                              fontFamily: 'Sofia Sans',
                            ),
                          ),
                          Image.asset(
                            AppImages.sparkles,
                            height: 22,
                            width: 22,
                          ),
                        ],
                      ),
                    ),
                  ] else
                    const Text(
                      'Correct Pass',
                    )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                subTitles ?? 'Revolutionary sneakers',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xFFCCCCCC),
                  fontFamily: 'Sofia Sans',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
