import 'package:awsome_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_pages.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.grey),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    ));

// this is demo  first app so use

