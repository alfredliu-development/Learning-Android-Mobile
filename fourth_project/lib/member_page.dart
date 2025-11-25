import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  Future<void> logout(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("isLogin");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member Area"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => logout(context),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Selamat datang di Member Area!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
