import 'package:collectify_application/Dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'aboutUsScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_drawer.dart';
import 'home.dart';
import 'Dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Check if Firebase is connected.
  bool connected = Firebase.apps.isNotEmpty;
  print('Firebase is connected: $connected');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collectify Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
