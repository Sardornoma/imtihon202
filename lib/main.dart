  import 'package:flutter/material.dart';
import 'package:imtihon202/screens/details_page.dart';
import 'package:imtihon202/screens/login_page.dart';
  import 'package:imtihon202/screens/main_page.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: DetailsPage(),
        // home: HomePage(),
      );
    }
  }
