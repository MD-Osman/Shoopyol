// // import 'package:flutter/material.dart';
// // import 'package:store_app/models/product.dart';

// // import '../../constants.dart';

// // class ProductCard extends StatelessWidget {
// //   const ProductCard({
// //     Key key,
// //     this.itemIndex,
// //     this.product,
// //     this.press,
// //   }) : super(key: key);

// //   final int itemIndex;
// //   final Product product;
// //   final Function press;

// //   @override
// //   Widget build(BuildContext context) {
// //     Size size = MediaQuery.of(context).size;
// //     return Container(
// //       margin: EdgeInsets.symmetric(
// //         horizontal: kDefaultPadding,
// //         vertical: kDefaultPadding / 2,
// //       ),
// //       height: 190.0,
// //       child: InkWell(
// //         onTap: press,
// //         child: Stack(
// //           alignment: Alignment.bottomCenter,
// //           children: [
// //             Container(
// //               height: 166.0,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(22),
// //                 color: Colors.white,
// //                 boxShadow: [
// //                   BoxShadow(
// //                       offset: Offset(0, 15),
// //                       blurRadius: 25,
// //                       color: Colors.black12),
// //                 ],
// //               ),
// //             ),
// //             Positioned(
// //               top: 0.0,
// //               left: 0.0,
// //               child: Container(
// //                 padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
// //                 height: 160.0,
// //                 width: 200.0,
// //                 child: Image.asset(
// //                   product.image,
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //             ),
// //             Positioned(
// //               bottom: 0.0,
// //               right: 0.0,
// //               child: SizedBox(
// //                 height: 136.0,
// //                 // Because oure image is 200 width, then: width - 200
// //                 width: size.width - 200,
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Spacer(),
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(
// //                           horizontal: kDefaultPadding),
// //                       child: Text(
// //                         product.title,
// //                         style: Theme.of(context).textTheme.bodyText1,
// //                       ),
// //                     ),
// //                     Spacer(),
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(
// //                           horizontal: kDefaultPadding),
// //                       child: Text(
// //                         product.subTitle,
// //                         style: Theme.of(context).textTheme.caption,
// //                       ),
// //                     ),
// //                     Spacer(),
// //                     Padding(
// //                       padding: const EdgeInsets.all(kDefaultPadding),
// //                       child: Container(
// //                         padding: EdgeInsets.symmetric(
// //                           horizontal: kDefaultPadding * 1.5, // 30 px padding
// //                           vertical: kDefaultPadding / 5, // 5 px padding
// //                         ),
// //                         decoration: BoxDecoration(
// //                           color: kSecondaryColor,
// //                           borderRadius: BorderRadius.circular(22),
// //                         ),
// //                         child: Text('السعر: \$${product.price}'),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //==============
// child: const Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Hero(
//                     tag: 'tag100',
//                     child: Image(
//                       width: 300,
//                       image: AssetImage('images/LaptopTag100.jpeg'),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Casper Excalibur',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           'G870.1245-BFA0X-B Intel Core i5 12450H 16GB 1TB SSD RTX4050 Freedos 15.6" Taşınabilir Bilgisayar ',
//                           style: TextStyle(fontWeight: FontWeight.w200, fontSize: 11),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 2,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '24,780',
//                         style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         ' TL.',
//                         style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),

// import 'package:flutter/material.dart';
// import 'package:store_app/constants.dart';
// import 'package:store_app/models/product.dart';
// import 'package:store_app/widgets/details/color_dot.dart';
// import 'package:store_app/widgets/details/product_image.dart';

// class DetailsBody extends StatelessWidget {
//   final Product product;

//   const DetailsBody({Key key, this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // to provide us the height and the width of the sceen
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
//           decoration: BoxDecoration(
//             color: kBackgroundColor,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(50),
//               bottomRight: Radius.circular(50),
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: ProductImage(
//                   size: size,
//                   image: product.image,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ColorDot(
//                       fillColor: kTextLightColor,
//                       isSelected: true,
//                     ),
//                     ColorDot(
//                       fillColor: Colors.blue,
//                       isSelected: false,
//                     ),
//                     ColorDot(
//                       fillColor: Colors.red,
//                       isSelected: false,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
//                 child: Text(
//                   product.title,
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//               ),
//               Text(
//                 'السعر: \$${product.price}',
//                 style: TextStyle(
//                   fontSize: 28.0,
//                   fontWeight: FontWeight.w600,
//                   color: kSecondaryColor,
//                 ),
//               ),
//               SizedBox(height: kDefaultPadding),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
//           padding: EdgeInsets.symmetric(
//             horizontal: kDefaultPadding * 1.5,
//             vertical: kDefaultPadding / 2,
//           ),
//           child: Text(
//             product.description,
//             style: TextStyle(color: Colors.white, fontSize: 19.0),
//           ),
//         ),
//       ],
//     );
//   }
// }