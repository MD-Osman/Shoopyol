// // ignore_for_file: file_names

// class ProductY {
//   final double id;
//   final String title, subTitle, description, price, image;
//   final List<String> desimage;

//   ProductY({required this.id, required this.price, required this.title, required this.subTitle, required this.description, required this.image, required this.desimage});
// }

// String formatTurkishLira(double amount) {
//   bool isNegative = amount < 0;
//   amount = isNegative ? -amount : amount;

//   String amountString = amount.toStringAsFixed(2);

//   List<String> parts = amountString.split('.');

//   String wholePart = parts[0];
//   String formattedWholePart = '';
//   for (int i = 0; i < wholePart.length; i++) {
//     if (i > 0 && (wholePart.length - i) % 3 == 0) {
//       formattedWholePart += '.';
//     }
//     formattedWholePart += wholePart[i];
//   }

//   String formattedAmount = isNegative ? '-₺$formattedWholePart,${parts[1]}' : '₺$formattedWholePart,${parts[1]}';

//   return formattedAmount;
// }

// // list of ProductYs
// List<ProductY> productYs = [
//   ProductY(
//     id: 1,
//     price: formatTurkishLira(250.89),
//     title: "2 Adet Orta Boy Pizza",
//     subTitle: "Cazip pizzalar için geçerlidir. Özel pizzalar için 20 TL, Bol Malzeme pizzalar için 30 TL, Trend pizzalar için 40 TL, Gurme pizzalar için 50 TL, Gurme Plus pizzalar için 60 TL fiyat farkı alınmaktadır.",
//     image: "images/OrtaBoyPizza.jpg",
//     description: "Cazip pizzalar için geçerlidir. Özel pizzalar için 20 TL, Bol Malzeme pizzalar için 30 TL, Trend pizzalar için 40 TL, Gurme pizzalar için 50 TL, Gurme Plus pizzalar için 60 TL fiyat farkı alınmaktadır.",
//     desimage: [
//       "images/OrtaBoyPizza.jpg",
//     ],
//   ),
//   ProductY(
//     id: 2,
//     price: formatTurkishLira(100.76),
//     title: "Tavuk Eko Dürüm",
//     subTitle: "Kızarmış Lavaş Ekmeği, 50Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
//     image: "images/TavukEkoDurum.jpg",
//     description: "Kızarmış Lavaş Ekmeği, 50Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
//     desimage: [
//       "images/TavukEkoDurum.jpg",
//     ],
//   ),
//   ProductY(
//     id: 3,
//     price: formatTurkishLira(119),
//     title: "Et Eko Dürüm",
//     subTitle: "Kızarmış Lavaş Ekmeği, 50Gr Et Döner, Hot Döner Et Sosu, Patates Kızartması, Dilim Kornişon Turşu, Colarado Sos",
//     image: "images/EtEkoDurum.jpg",
//     description: "Kızarmış Lavaş Ekmeği, 50Gr Et Döner, Hot Döner Et Sosu, Patates Kızartması, Dilim Kornişon Turşu, Colarado Sos",
//     desimage: [
//       "images/EtEkoDurum.jpg",
//     ],
//   ),
//   ProductY(
//     id: 4,
//     price: formatTurkishLira(160),
//     title: "Tavuk Jumbo Dürüm",
//     subTitle: "1,5 Kızarmış Lavaş Ekmeği, 90Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
//     image: "images/TavukJumboDurum.jpg",
//     description: "1,5 Kızarmış Lavaş Ekmeği, 90Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
//     desimage: [
//       "images/TavukJumboDurum.jpg",
//     ],
//   ),
//   ProductY(
//     id: 5,
//     price: formatTurkishLira(80),
//     title: "Mag XXL Energy",
//     subTitle: "Çilek, muz bol Nutella, fındık, Antep fıstığı, Oreo, mascarpone ile hazırlanmış mag kreması",
//     image: "images/MagXXLEnergy.jpg",
//     description: "Çilek, muz bol Nutella, fındık, Antep fıstığı, Oreo, mascarpone ile hazırlanmış mag kreması",
//     desimage: [
//       "images/MagXXLEnergy.jpg",
//     ],
//   ),
//   ProductY(
//     id: 6,
//     price: formatTurkishLira(145),
//     title: "Çikolatalı Pasta",
//     subTitle: "Çikolatalı Pasta (1 Kişilik)",
//     image: "images/ÇikolataliPasta.jpg",
//     description: "Çikolatalı Pasta (1 Kişilik)",
//     desimage: [
//       "images/ÇikolataliPasta.jpg",
//     ],
//   ),
// ];
