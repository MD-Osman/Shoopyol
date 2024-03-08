// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:get/get.dart';

import 'package:proje_store/FavoriPage.dart';
import 'package:proje_store/SepetePage.dart';
import 'package:proje_store/SettingPage.dart';
import 'package:proje_store/Storage/Ev.dart';
import 'package:proje_store/Storage/Giyim.dart';
import 'package:proje_store/Storage/Laptop.dart';
import 'package:proje_store/Storage/Yiyecek.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myCurrentPage = 0;
  List Pages = [
    HomePage(),
    FavoriPage(
        // onFavoriPageCreated: (state) {
        //   // Handle the created state if needed
        // },
        ),
    SepetePage(),
    SettingPage(),
  ];

  List<String> images = [
    'images/kuponAd.png',
    'images/indirimAd.jpg',
    'images/yemekAd.jpg',
  ];
  int _currentPage = 0;

  late Timer _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (Timer timer) {
        if (_currentPage < 2) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(
          0xFF241536,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              IndirimAd(),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 253, 250, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        cardGiyim(),
                        cardEv(),
                        cardBilgisayar(),
                        cardYemek(),
                        Row(
                          //sileneck
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: 170,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  )
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // CircleAvatar(
                                    //   radius: 30.0,
                                    //   backgroundImage: AssetImage('images/giyim4.png'),
                                    // ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Uygulamayi tasarlayan :",
                                              style: TextStyle(
                                                fontFamily: 'Victor',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Color(0xFFA953AE),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Muhammed Osman",
                                              style: TextStyle(
                                                fontFamily: 'Victor',
                                                color: Color(0xFFA953AE),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                width: 170,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // CircleAvatar(
                                      //   radius: 30.0,
                                      //   backgroundImage: AssetImage('images/kanepe1.png'),
                                      // ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Bizi",
                                                style: TextStyle(
                                                  fontFamily: 'Victor',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  color: Color(0xFFA953AE),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "degerlendir",
                                                style: TextStyle(
                                                  fontFamily: 'Victor',
                                                  color: Color(0xFFA953AE),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IndirimAd() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: PageView(
        controller: _pageController,
        children: [
          Container(
            height: Curves.easeInOut.transform(1) * 200,
            width: Curves.easeInOut.transform(1) * 350,
            margin: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 6),
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  images[0],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Curves.easeInOut.transform(1) * 200,
            width: Curves.easeInOut.transform(1) * 350,
            margin: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 6),
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  images[1],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Curves.easeInOut.transform(1) * 200,
            width: Curves.easeInOut.transform(1) * 350,
            margin: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 6),
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  images[2],
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  cardGiyim() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StGiyim(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 190,
        //color: Colors.green,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 150,
                child: Image.asset(
                  'images/giyimAnaSayfa2.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: SizedBox(
                height: 136,
                width: MediaQuery.of(context).size.width - 200,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Giyim",
                        style: TextStyle(
                          color: Color(0xFFA953AE),
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Yeni ürünlere göz at !",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardEv() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StEv(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 190,
        //color: Colors.green,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 150,
                child: Image.asset(
                  'images/kanepeAnaSayfa.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: SizedBox(
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ev",
                                style: TextStyle(
                                  fontFamily: 'Victor',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  color: Color(0xFFA953AE),
                                  shadows: [
                                    Shadow(
                                      color: Colors.black12,
                                      blurRadius: 2.0,
                                      offset: Offset(2.0, 2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Mobilyalari",
                                style: TextStyle(
                                  fontFamily: 'Victor',
                                  color: Color(0xFFA953AE),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black12,
                                      blurRadius: 2.0,
                                      offset: Offset(2.0, 2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "Gittikçe fiyatı azalıyor !",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardBilgisayar() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StLaptop(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 190,
        //color: Colors.green,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(
                  'images/laptopAnaSayfa.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: SizedBox(
                height: 136,
                width: MediaQuery.of(context).size.width - 200,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Bilgisayar",
                        style: TextStyle(
                          color: Color(0xFFA953AE),
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Gelen cihazlara göz at !",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardYemek() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StYiyecek(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 190,
        //color: Colors.green,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(
                  'images/yiyecekAnaSayfa.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: SizedBox(
                height: 136,
                width: MediaQuery.of(context).size.width - 200,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Yiyecek",
                        style: TextStyle(
                          color: Color(0xFFA953AE),
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lezzetin tadını çıkar 🍕",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Victor',
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
