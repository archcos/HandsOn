import 'package:flutter/material.dart';
import 'package:handson1/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Hands On Act",
    theme: ThemeData(
      primarySwatch: Colors.teal
    ),
    home: const HomePage(),
  ));
}