// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:proje_store/DataBase/Product.dart';
import 'package:proje_store/DataBase/ProductCardG.dart';
import 'package:proje_store/FavoriPage.dart';

class StGiyim extends StatefulWidget {
  const StGiyim({super.key});

  @override
  State<StGiyim> createState() => _StGiyimState();
}

class _StGiyimState extends State<StGiyim> {
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
          "Giyim",
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

            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: true,
              itemCount: Product.products.length,
              itemBuilder: (context, index) => ProductCardG(
                itemIndex: index,
                product: Product.productG[index],
                press: () {
                  //bos
                },
        
              ),
            ),

          ],
        ),
      ),
    );
  }
}
