// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:proje_store/DataBase/Product.dart';
import 'package:proje_store/ozellikler/product_color.dart';
import 'package:proje_store/ozellikler/splash/presentataion/enums.dart';

class DataLaptop extends StatelessWidget {
   final List <Product> product;
   final int id;
   DataLaptop({
    
    super.key,
    required this.id,
    required this.product,
  });

  @override
  Widget build(BuildContext context ) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(right: 0),
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.4,
            child: PageView.builder(
              itemCount: Product.products.length,
              itemBuilder: (context, index ) {
                return Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: size.width,
                        child: Image.asset(
                          Product.products[id].desimage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  //alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 250, 241, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10 /*kDefaultPadding*/),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ColorDot(
                              fillColor: kTextLightColor,
                              isSelected: true,
                            ),
                            ColorDot(
                              fillColor: Colors.blue,
                              isSelected: false,
                            ),
                            ColorDot(
                              fillColor: Colors.red,
                              isSelected: false,
                            ),
                          ],
                        ),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding / 2),
                        child: Text(
                          
                          Product.products[id].title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding / 2,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 2,
                        ),
                        child: Text(
                          'Detaylar: ${Product.products[id].description}',
                          style: const TextStyle(color: Colors.black, fontSize: 19.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Fiyat : ${Product.products[id].price}',
                          style: const TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600,
                            color: kSecondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
