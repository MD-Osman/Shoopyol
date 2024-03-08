// ignore_for_file: file_names

import 'package:flutter/material.dart';


class SepetePage extends StatefulWidget {
  const SepetePage({super.key});

  @override
  State<SepetePage> createState() => _SepetePAgeState();
}

class _SepetePAgeState extends State<SepetePage> {
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 250, 255),
        body: Center(
          child: Text(
            'Sepet boş.',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
