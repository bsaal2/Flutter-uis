import 'package:flutter/material.dart';
import 'screens/doctor-profile.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
          primaryColor: Colors.blue,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.grey.shade800,
              unselectedItemColor: Colors.grey)),
      home: DoctorProfile()));
}
