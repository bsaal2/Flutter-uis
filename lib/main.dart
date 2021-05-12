import 'package:flutter/material.dart';
// import 'screens/doctor-profile.dart';
import 'instagram-clone/screens/instagram-home.dart';

/// Function to run the DoctorDashboard Profile
// void main() {
//   runApp(MaterialApp(
//       title: 'Flutter',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primaryColor: Colors.blue,
//           bottomNavigationBarTheme: BottomNavigationBarThemeData(
//               selectedItemColor: Colors.grey.shade800,
//               unselectedItemColor: Colors.grey)),
//       home: DoctorProfile()));
// }

/// Main function to run the Instagram Home Clone.
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              headline2: TextStyle(color: Colors.grey, fontSize: 12))),
      home: InstagramHome()));
}
