// ignore_for_file: file_names

import 'package:flutter/material.dart';


import 'package:proje_store/DataBase/ProdectCardY.dart';
import 'package:proje_store/DataBase/Product.dart';



class StYiyecek extends StatefulWidget {
  const StYiyecek({super.key});

  @override
  State<StYiyecek> createState() => _StYiyecekState();
}

class _StYiyecekState extends State<StYiyecek> {
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
          "Yiyecek",
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
              itemCount:Product.productYs.length,
              itemBuilder: (context, index) => ProdectCardY(
                itemIndex: index,
                product:Product.productYs[index],
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
