import 'package:dentist_UI/src/HomePage.dart';
import 'package:flutter/material.dart';

class DentistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dentist Scheduler',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
