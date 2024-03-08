// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:proje_store/DataBase/Product.dart';

typedef OnFavoriPageCreated = void Function(FavoriPageState? state);

class FavoriPage extends StatefulWidget {
  const FavoriPage({
    Key? key,
    /*required this.onFavoriPageCreated*/
  }) : super(key: key);

  //final OnFavoriPageCreated onFavoriPageCreated;

  @override
  State<FavoriPage> createState() => FavoriPageState();

  void addToFavorites(Product product) {}

  void removeFromFavorites(Product product) {}
}

class FavoriPageState extends State<FavoriPage> {
  List<Product> favoriteDataList = [];

  // @override
  // void initState() {
  //   super.initState();
  //   widget.onFavoriPageCreated;
  // }

  void addToFavorites(Product product) {
    setState(() {
      favoriteDataList.add(product);
    });
  }

  void removeFromFavorites(Product product) {
    setState(() {
      favoriteDataList.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 250, 255),
      body: favoriteDataList.isEmpty
          ? const Center(
              child: Text(
                'Favori listeniz boş.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          : ListView.builder(
              itemCount: favoriteDataList.length,
              itemBuilder: (context, index) {
                Product product = favoriteDataList[index];
                return ListTile(
                  title: Text(product.title),
                  subtitle: Text('Fiyat: ${product.price}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      removeFromFavorites(product);
                    },
                  ),
                );
              },
            ),
    );
  }
}
