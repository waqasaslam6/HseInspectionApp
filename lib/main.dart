import 'package:flutter/material.dart';
import 'package:hse/pages/Login.dart';

void main()
{
  runApp(MaterialApp(
    title: "HSE Inspection",
    debugShowCheckedModeBanner: false,
    home: Login(),
    theme: ThemeData(
      primaryColor: Color(0xffE34E62),
    ),
  ));
}