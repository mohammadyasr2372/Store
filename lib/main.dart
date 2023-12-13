// ignore_for_file: prefer_const_constructors

import 'package:exam_12/model/prodect.dart';
import 'package:exam_12/service/Prodect_service.dart';
import 'package:exam_12/view/Basepage.dart';
import 'package:flutter/material.dart';

Prodect_Service one = Prodect_Service();
late List<ProdectModel> prodects;

void main() async {
  await one.getAllProdect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Basepage(),
    );
  }
}
