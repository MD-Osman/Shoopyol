// ignore_for_file: file_names

class Product {
  final double id;
  final String title, subTitle, description, price, image;
  final List<String> desimage;

  Product({required this.id, required this.price, required this.title, required this.subTitle, required this.description, required this.image, required this.desimage});
  static List<Product> products = [
    Product(
      id: 1,
      price: formatTurkishLira(23999.89),
      title: "Huawei Matebook",
      subTitle: "D16 2024 Intel Core i5 12450H 16GB 512GB SSD Windows 11 Home 16 IPS Taşınabilir Bilgisayar",
      image: "images/HuaweiMatebook.jpeg",
      description: "D16 2024 Intel Core i5 12450H 16GB 512GB SSD Windows 11 Home 16 IPS Taşınabilir Bilgisayar",
      desimage: [
        "images/HuaweiMatebook.jpeg",
        "images/HuaweiMatebook1.jpg",
        "images/HuaweiMatebook2.jpg",
        "images/HuaweiMatebook3.jpg",
        "images/HuaweiMatebook4.jpg",
        "images/HuaweiMatebook5.jpg",
        "images/HuaweiMatebook6.jpg",
      ],
    ),
    Product(
      id: 2,
      price: formatTurkishLira(23434.76),
      title: "Monster Tulpar",
      subTitle: "T7 V20.6.2 Intel Core i7 13700H 32 GB RAM 1 TB SSD 8 GB RTX 4060 FreeDOS 17,3 FHD 144 Hz Oyun Bilgisayarı",
      image: "images/MonsterTulpar.jpeg",
      description: "T7 V20.6.2 Intel Core i7 13700H 32 GB RAM 1 TB SSD 8 GB RTX 4060 FreeDOS 17,3 FHD 144 Hz Oyun Bilgisayarı",
      desimage: [
        "images/MonsterTulpar.jpeg",
        "images/MonsterTulpar1.jpg",
        "images/MonsterTulpar2.jpg",
        "images/MonsterTulpar3.jpg",
        "images/MonsterTulpar4.jpg",
      ],
    ),
    Product(
      id: 3,
      price: formatTurkishLira(3245.9),
      title: "Casper Excalibur",
      subTitle: "G870.1245-BFA0X-B Intel Core i5 12450H 16GB 1TB SSD RTX4050 Freedos 15.6 Taşınabilir Bilgisayar",
      image: "images/CasperExcalibur.jpeg",
      description: "G870.1245-BFA0X-B Intel Core i5 12450H 16GB 1TB SSD RTX4050 Freedos 15.6 Taşınabilir Bilgisayar",
      desimage: [
        "images/CasperExcalibur.jpeg",
        "images/CasperExcalibur1.jpg",
        "images/CasperExcalibur2.jpg",
        "images/CasperExcalibur3.jpg",
        "images/CasperExcalibur4.jpg",
      ],
    ),
    Product(
      id: 4,
      price: formatTurkishLira(0987.9),
      title: "Casper Nirvana",
      subTitle: "X600.5700-BV00X-G-F AMD Ryzen 7 5700U 16GB 500GB SSD Freedos 15.6 Taşınabilir Bilgisayar",
      image: "images/CasperNirvana.jpeg",
      description: "X600.5700-BV00X-G-F AMD Ryzen 7 5700U 16GB 500GB SSD Freedos 15.6 Taşınabilir Bilgisayar",
      desimage: [
        "images/CasperNirvana.jpeg",
        "images/CasperNirvana1.jpg",
        "images/CasperNirvana2.jpg",
      ],
    ),
    Product(
      id: 5,
      price: formatTurkishLira(30876),
      title: "Hp Victus",
      subTitle: "16-S0017NT 7Z587EA 6gb RTX4050 Ryzen 7 7840HS 16GB Ram 1tb SSD 16.1 Inç Fhd 144Hz Taşınabilir Bilgisayar",
      image: "images/HpVictus.jpeg",
      description: "16-S0017NT 7Z587EA 6gb RTX4050 Ryzen 7 7840HS 16GB Ram 1tb SSD 16.1 Inç Fhd 144Hz Taşınabilir Bilgisayar",
      desimage: [
        "images/HpVictus.jpeg",
        "images/HpVictus1.jpg",
        "images/HpVictus2.jpg",
        "images/HpVictus3.jpg",
        "images/HpVictus4.jpg",
      ],
    ),
    Product(
      id: 6,
      price: formatTurkishLira(45436.89),
      title: "Lenovo Ideapad 1",
      subTitle: "AMD Ryzen 5 7520U 8GB 512GB SSD Freedos 15.6 FHD Taşınabilir Bilgisayar 82VG008CTX",
      image: "images/LenovoIdeapad.jpeg",
      description: "AMD Ryzen 5 7520U 8GB 512GB SSD Freedos 15.6 FHD Taşınabilir Bilgisayar 82VG008CTX",
      desimage: [
        "images/LenovoIdeapad.jpeg",
        "images/LenovoIdeapad1des.jpeg",
        "images/LenovoIdeapad1des2.jpg",
        "images/LenovoIdeapad1des3.jpg",
        "images/LenovoIdeapad1des4.jpg",
      ],
    ),
  ];

  static List<Product> productYs = [
    Product(
      id: 1,
      price: formatTurkishLira(250.89),
      title: "2 Orta Boy Pizza",
      subTitle: "Cazip pizzalar için geçerlidir. Özel pizzalar için 20 TL, Bol Malzeme pizzalar için 30 TL, Trend pizzalar için 40 TL, Gurme pizzalar için 50 TL, Gurme Plus pizzalar için 60 TL fiyat farkı alınmaktadır.",
      image: "images/OrtaBoyPizza.jpg",
      description: "Cazip pizzalar için geçerlidir. Özel pizzalar için 20 TL, Bol Malzeme pizzalar için 30 TL, Trend pizzalar için 40 TL, Gurme pizzalar için 50 TL, Gurme Plus pizzalar için 60 TL fiyat farkı alınmaktadır.",
      desimage: [
        "images/OrtaBoyPizza.jpg",
        "images/OrtaBoyPizza.jpg",
        "images/OrtaBoyPizza.jpg",
        "images/OrtaBoyPizza.jpg",
        "images/OrtaBoyPizza.jpg",
        "images/OrtaBoyPizza.jpg",
      ],
    ),
    Product(
      id: 2,
      price: formatTurkishLira(100.76),
      title: "Tavuk Eko Dürüm",
      subTitle: "Kızarmış Lavaş Ekmeği, 50Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
      image: "images/TavukEkoDurum.jpg",
      description: "Kızarmış Lavaş Ekmeği, 50Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
      desimage: [
        "images/TavukEkoDurum.jpg",
        "images/TavukEkoDurum.jpg",
        "images/TavukEkoDurum.jpg",
        "images/TavukEkoDurum.jpg",
        "images/TavukEkoDurum.jpg",
        "images/TavukEkoDurum.jpg",
      ],
    ),
    Product(
      id: 3,
      price: formatTurkishLira(119),
      title: "Et Eko Dürüm",
      subTitle: "Kızarmış Lavaş Ekmeği, 50Gr Et Döner, Hot Döner Et Sosu, Patates Kızartması, Dilim Kornişon Turşu, Colarado Sos",
      image: "images/EtEkoDurum.jpg",
      description: "Kızarmış Lavaş Ekmeği, 50Gr Et Döner, Hot Döner Et Sosu, Patates Kızartması, Dilim Kornişon Turşu, Colarado Sos",
      desimage: [
        "images/EtEkoDurum.jpg",
        "images/EtEkoDurum.jpg",
        "images/EtEkoDurum.jpg",
        "images/EtEkoDurum.jpg",
        "images/EtEkoDurum.jpg",
        "images/EtEkoDurum.jpg",
      ],
    ),
    Product(
      id: 4,
      price: formatTurkishLira(160),
      title: "Tavuk Jumbo",
      subTitle: "1,5 Kızarmış Lavaş Ekmeği, 90Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
      image: "images/TavukJumboDurum.jpg",
      description: "1,5 Kızarmış Lavaş Ekmeği, 90Gr Tavuk Döner, Hot Döner Tavuk Sosu, Patates Kızartması, Dilim Kornişon Turşu,Mayonez .",
      desimage: [
        "images/TavukJumboDurum.jpg",
        "images/TavukJumboDurum.jpg",
      ],
    ),
    Product(
      id: 5,
      price: formatTurkishLira(80),
      title: "Mag XXL Energy",
      subTitle: "Çilek, muz bol Nutella, fındık, Antep fıstığı, Oreo, mascarpone ile hazırlanmış mag kreması",
      image: "images/MagXXLEnergy.jpg",
      description: "Çilek, muz bol Nutella, fındık, Antep fıstığı, Oreo, mascarpone ile hazırlanmış mag kreması",
      desimage: [
        "images/MagXXLEnergy.jpg",
        "images/MagXXLEnergy.jpg",
        "images/MagXXLEnergy.jpg",
        "images/MagXXLEnergy.jpg",
        "images/MagXXLEnergy.jpg",
        "images/MagXXLEnergy.jpg",
      ],
    ),
    Product(
      id: 6,
      price: formatTurkishLira(145),
      title: "Çikolatalı Pasta",
      subTitle: "Çikolatalı Pasta (1 Kişilik)",
      image: "images/ÇikolataliPasta.jpg",
      description: "Çikolatalı Pasta (1 Kişilik)",
      desimage: [
        "images/ÇikolataliPasta.jpg",
        "images/ÇikolataliPasta.jpg",
        "images/ÇikolataliPasta.jpg",
        "images/ÇikolataliPasta.jpg",
        "images/ÇikolataliPasta.jpg",
        "images/ÇikolataliPasta.jpg",
      ],
    ),
  ];
  static List<Product> productG = [
    Product(
      id: 1,
      price: formatTurkishLira(849.89),
      title: "Kiğılı Şişme Mont",
      subTitle: "Kiğılı Kiğılı Şişme Mont",
      image: "images/KiğılıŞişmeMont.jpg",
      description: "Kiğılı Şişme Mont Beden :M .",
      desimage: [
        "images/KiğılıŞişmeMont.jpg",
        "images/KiğılıŞişmeMont1.jpg",
        "images/KiğılıŞişmeMont6.jpg",
        "images/KiğılıŞişmeMont3.jpg",
        "images/KiğılıŞişmeMont4.jpg",
        "images/KiğılıŞişmeMont5.jpg",
      ],
    ),
    Product(
      id: 2,
      price: formatTurkishLira(642.76),
      title: "Jogger Pantolon",
      subTitle: "Avva Erkek Siyah Yandan Cepli Beli Lastikli Bağcıklı Duble Paça Relaxed Fit Rahat Kesim Jogger Pantolon E003000",
      image: "images/JoggerPantolon.png",
      description: "Avva Erkek Siyah Yandan Cepli Beli Lastikli Bağcıklı Duble Paça Relaxed Fit Rahat Kesim Jogger Pantolon E003000 Beden: L",
      desimage: [
        "images/JoggerPantolon.png",
        "images/JoggerPantolon1.jpg",
        "images/JoggerPantolon2.jpg",
        "images/JoggerPantolon3.jpg",
        "images/JoggerPantolon4.jpg",
        "images/JoggerPantolon5.png",
      ],
    ),
    Product(
      id: 3,
      price: formatTurkishLira(119),
      title: "Sweatshirt",
      subTitle: "AVVA Erkek Siyah-Beyaz-Antrasit Bisiklet Parçalı Sweatshirt",
      image: "images/Sweatshirt.jpg",
      description: "AVVA Erkek Siyah-Beyaz-Antrasit Bisiklet Parçalı Sweatshirt A32Y1197 Beden :L",
      desimage: [
        "images/Sweatshirt.jpg",
        "images/Sweatshirt1.jpg",
        "images/Sweatshirt2.jpg",
        "images/Sweatshirt3.jpg",
        "images/Sweatshirt4.jpg",
        "images/Sweatshirt5.jpg",
      ],
    ),
    Product(
      id: 4,
      price: formatTurkishLira(160),
      title: "Kesim Gömlek",
      subTitle: "Avva Erkek Beyaz Düğmeli Yaka Kolay Ütülenebilir Oxford Pamuklu Standart Fit Normal Kesim Gömlek",
      image: "images/KesimGömlek.png",
      description: "Avva Erkek Beyaz Düğmeli Yaka Kolay Ütülenebilir Oxford Pamuklu Standart Fit Normal Kesim Gömlek E002000 Beden :XL-L.",
      desimage: [
        "images/KesimGömlek.png",
        "images/KesimGömlek1.jpg",
        "images/KesimGömlek2.jpg",
        "images/KesimGömlek3.png",
        "images/KesimGömlek4.jpg",
        "images/KesimGömlek.png",
      ],
    ),
    Product(
      id: 5,
      price: formatTurkishLira(600),
      title: "Unisex Sweatshirt",
      subTitle: "Avva Taş Kapüşonlu Yaka İçi Polarlı 3 İplik Pamuklu Standart Fit Normal Kesim Unisex Sweatshirt",
      image: "images/UnisexSweatshirt.jpg",
      description: "Avva Taş Kapüşonlu Yaka İçi Polarlı 3 İplik Pamuklu Standart Fit Normal Kesim Unisex Sweatshirt E001018 Beden:M-L-XL",
      desimage: [
        "images/UnisexSweatshirt.jpg",
        "images/UnisexSweatshirt1.png",
        "images/UnisexSweatshirt2.jpg",
        "images/UnisexSweatshirt3.jpg",
        "images/UnisexSweatshirt4.jpg",
        "images/UnisexSweatshirt5.jpg",
      ],
    ),
    Product(
      id: 6,
      price: formatTurkishLira(652),
      title: "Basic Kazak",
      subTitle: "Pierre Cardin Erkek Kum Melanj Slim Fit Basic Kazak",
      image: "images/BasicKazak.jpg",
      description: "Pierre Cardin Erkek Kum Melanj Slim Fit Basic Kazak 50276531-VR123 Beden :M-L-XL",
      desimage: [
        "images/BasicKazak.jpg",
        "images/BasicKazak1.jpg",
        "images/BasicKazak2.png",
        "images/BasicKazak3.jpg",
        "images/BasicKazak4.jpg",
        "images/BasicKazak3.jpg",
      ],
    ),
  ];
  static List<Product> productE = [
    Product(
      id: 1,
      price: formatTurkishLira(1849.89),
      title: "Komodin Ahşap",
      subTitle: "Diodor Şifonyer Parlak Beyaz 5 Çekmeceli Country Şifonyer",
      image: "images/KomodinAhşap.jpg",
      description: "Diodor Şifonyer Parlak Beyaz 5 Çekmeceli Country Şifonyer Komodin Ahşap.",
      desimage: [
        "images/KomodinAhşap.jpg",
        "images/KomodinAhşap1.jpg",
        "images/KomodinAhşap2.jpg",
        "images/KomodinAhşap3.jpg",
        "images/KomodinAhşap4.jpg",
        "images/KomodinAhşap2.jpg",
      ],
    ),
    Product(
      id: 2,
      price: formatTurkishLira(1642.76),
      title: "Karyola Siyah",
      subTitle: "Unimet Nerisa Tek Kişilik Metal Karyola-Siyah",
      image: "images/KaryolaSiyah.jpg",
      description: "Unimet Nerisa Tek Kişilik Metal Karyola-Siyah",
      desimage: [
        "images/KaryolaSiyah.jpg",
        "images/KaryolaSiyah1.jpg",
        "images/KaryolaSiyah2.jpg",
        "images/KaryolaSiyah3.jpg",
        "images/KaryolaSiyah4.jpg",
        "images/KaryolaSiyah2.png",
      ],
    ),
    Product(
      id: 3,
      price: formatTurkishLira(850),
      title: "Sebze Sepeti",
      subTitle: "Decorelax 2 Katlı Mutfak Organizatörü & Meyve Sebze Sepeti Siyah",
      image: "images/SebzeSepeti.jpg",
      description: "Decorelax 2 Katlı Mutfak Organizatörü & Meyve Sebze Sepeti Siyah",
      desimage: [
        "images/SebzeSepeti.jpg",
        "images/SebzeSepeti1.jpg",
        "images/SebzeSepeti2.jpg",
        "images/SebzeSepeti3.jpg",
        "images/SebzeSepeti4.jpg",
        "images/SebzeSepeti5.jpg",
      ],
    ),
    Product(
      id: 4,
      price: formatTurkishLira(160),
      title: "Ocak Dolabı",
      subTitle: "Mobben Ankastre Fırın Ocak Dolabı Fırın Dolabı Ankastre Ocak Dolabı Ankastre Modül",
      image: "images/OcakDolabı.jpg",
      description: "Mobben Ankastre Fırın Ocak Dolabı Fırın Dolabı Ankastre Ocak Dolabı Ankastre Modül",
      desimage: [
        "images/OcakDolabı.jpg",
        "images/OcakDolabı1.jpg",
        "images/OcakDolabı1.jpg",
        "images/OcakDolabı.jpg",
        "images/OcakDolabı2.png",
        "images/OcakDolabı2.png",
      ],
    ),
    Product(
      id: 5,
      price: formatTurkishLira(9600),
      title: "Yemek Masası",
      subTitle: "Canisa Concept Zen Serisi Mdf Açılabilir Mutfak Masası Takımı-Yemek Masası Takımı Beyaz Masa+6 Sandalye",
      image: "images/YemekMasası.jpg",
      description: "Canisa Concept Zen Serisi Mdf Açılabilir Mutfak Masası Takımı-Yemek Masası Takımı Beyaz Masa+6 Sandalye",
      desimage: [
        "images/YemekMasası.jpg",
        "images/YemekMasası1.png",
        "images/YemekMasası2.jpg",
        "images/YemekMasası3.jpg",
        "images/YemekMasası4.jpg",
        "images/YemekMasası2.jpg",
      ],
    ),
    Product(
      id: 6,
      price: formatTurkishLira(7652),
      title: "Koltuk",
      subTitle: "Ipek Mobilya Doremi 2 Li Koltuk ( Gri )",
      image: "images/Koltuk.jpg",
      description: "Ipek Mobilya Doremi 2 Li Koltuk ( Gri ) .",
      desimage: [
        "images/Koltuk.jpg",
        "images/Koltuk1.jpg",
        "images/Koltuk2.jpg",
        "images/Koltuk3.jpg",
        "images/Koltuk2.jpg",
        "images/Koltuk3.jpg",
      ],
    ),
  ];
}

String formatTurkishLira(double amount) {
  bool isNegative = amount < 0;
  amount = isNegative ? -amount : amount;

  String amountString = amount.toStringAsFixed(2);

  List<String> parts = amountString.split('.');

  String wholePart = parts[0];
  String formattedWholePart = '';
  for (int i = 0; i < wholePart.length; i++) {
    if (i > 0 && (wholePart.length - i) % 3 == 0) {
      formattedWholePart += '.';
    }
    formattedWholePart += wholePart[i];
  }

  String formattedAmount = isNegative ? '-₺$formattedWholePart,${parts[1]}' : '₺$formattedWholePart,${parts[1]}';

  return formattedAmount;
}

// list of products
 
 
