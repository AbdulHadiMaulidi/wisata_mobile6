import 'package:flutter/material.dart';
import 'package:wisata_mobile_6/materimodulscreens/pertemuan6.dart';
import 'package:wisata_mobile_6/materimodulscreens/pertemuan7listview.dart';
import 'package:wisata_mobile_6/screens/homescreen.dart';
import 'package:wisata_mobile_6/screens/splashscreen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pertemuan7listview(),
    );
  }
}
