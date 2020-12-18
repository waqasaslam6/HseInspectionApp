import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hse/pages/Login.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: "HSE Inspection",
    debugShowCheckedModeBanner: false,
    home: Login(),
    theme: ThemeData(
      primaryColor: Color(0xffE34E62),
    ),
  ));
}