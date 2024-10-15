import 'package:ecommerce_own_project/auth/sign_in/page.dart';
import 'package:ecommerce_own_project/auth/sign_up/page.dart';
import 'package:ecommerce_own_project/home%20/all_shoes/page.dart';
// import 'package:ecommerce_own_project/test.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

