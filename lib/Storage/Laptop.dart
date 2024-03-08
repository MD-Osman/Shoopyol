// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:proje_store/DataBase/Product.dart';
import 'package:proje_store/DataBase/ProductCard.dart';
import 'package:proje_store/FavoriPage.dart';

class StLaptop extends StatefulWidget {
  const StLaptop({Key? key}) : super(key: key);

  @override
  State<StLaptop> createState() => _StLaptopState();
}

class _StLaptopState extends State<StLaptop> {
  int tag = 0;
  FavoriPageState? favoriPageState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 250, 255),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFF241536),
        centerTitle: true,
        title: const Text(
          "Bilgisayar",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // FavoriPage(
            //   onFavoriPageCreated: (state) {
            //     setState(() {
            //       favoriPageState = state as FavoriPageState; // Use as to cast to non-nullable
            //     });
            //   },
            // ),
            //if (favoriPageState != null)
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: true,
              itemCount:Product.products.length,
              itemBuilder: (context, index) => ProductCard(
                itemIndex: index,
                product:Product.products[index],
                press: () {
                  //bos
                },
                // favoriPageState: favoriPageState!,
              ),
            ),
            // else
            //   // Handle the case where favoriPageState is null
            //   CircularProgressIndicator(), // or provide a default behavior
          ],
        ),
      ),
    );
  }
}
