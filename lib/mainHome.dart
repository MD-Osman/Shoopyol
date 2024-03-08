import 'package:flutter/material.dart';
import 'package:proje_store/FavoriPage.dart';
import 'package:proje_store/HomePage.dart';
import 'package:proje_store/SepetePage.dart';
import 'package:proje_store/SettingPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int myCurrentPage = 0;

  List<Widget> pages = [
    HomePage(),
    FavoriPage(
      // onFavoriPageCreated: (state) {
      //   // Handle the created state if needed
      // },
    ),
    SepetePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 250, 255),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF241536),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Shoop",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Color(0xFFA953AE),
                ),
              ),
              Text(
                "yol",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFA953AE).withOpacity(0.1),
              borderRadius: const BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            child: GNav(
              onTabChange: (value) {
                setState(() {
                  myCurrentPage = value;
                });
              },
              padding: const EdgeInsets.all(10),
              color: const Color(0xFF371C53),
              activeColor: const Color(0xFFA953AE),
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Ana Sayfa',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favori',
                ),
                GButton(
                  icon: Icons.shopping_basket,
                  text: 'Sepet',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Ayarlar',
                ),
              ],
            ),
          ),
        ),
        body: pages[myCurrentPage],
      ),
    );
  }
}
