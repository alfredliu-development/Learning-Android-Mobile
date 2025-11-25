import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';
import 'member_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("isLogin") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login SQLite",
      home: FutureBuilder(
        future: checkLogin(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return SizedBox();
          return snapshot.data == true ? MemberPage() : LoginPage();
        },
      ),
    );
  }
}
