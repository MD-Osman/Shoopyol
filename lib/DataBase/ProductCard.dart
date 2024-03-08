// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:proje_store/DataBase/DataLaptop.dart';
import 'package:proje_store/DataBase/Product.dart';
import 'package:proje_store/ozellikler/splash/presentataion/enums.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,

  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorited = false;
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DataLaptop(
                id: widget.itemIndex,
                product: Product.products,
              ),
            ),
          );
        }),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
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
              right: 0.0,
              child: Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160.0,
                  width: 200.0,
                  child: Image.asset(
                    widget.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: SizedBox(
                height: 136.0,

                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Expanded(
                        child: Text(
                          widget.product.title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(
                        widget.product.subTitle,
                        style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 11),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding, // 30 px padding
                          vertical: kDefaultPadding / 5, // 5 px padding
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text(
                          'Fiyati: ${widget.product.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: kDefaultPadding,
              right: kDefaultPadding,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isFavorited = !isFavorited;
                  });
               
                },
                icon: Icon(
                  isFavorited ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
