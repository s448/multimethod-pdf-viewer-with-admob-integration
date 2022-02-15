import 'package:flutter/material.dart';
import 'package:multy_method_pdf_reader/Screens/home_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/icons/500.png'),
      title: Text(
        "PDF viewer",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      navigator: HomePage(),
      durationInSeconds: 5,
    );
  }
}
