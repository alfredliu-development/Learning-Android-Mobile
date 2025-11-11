import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/product_list_page.dart';
import 'pages/contact_page.dart';
import 'pages/about_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter Navigation',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/products': (context) => const ProductListPage(),
        '/contact': (context) => const ContactPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
