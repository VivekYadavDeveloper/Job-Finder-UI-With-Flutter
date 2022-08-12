import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:job_finder/screens/on_bordingscreen.dart';
import 'package:job_finder/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: const OnBordingScreen(),
    );
  }
}
