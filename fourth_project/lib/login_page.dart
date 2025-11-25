import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'database_helper.dart';
import 'member_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();

  void doLogin() async {
    var user = await DatabaseHelper.instance.loginUser(
      username.text,
      password.text,
    );

    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Username atau password salah"))
      );
      return;
    }

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLogin", true);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => MemberPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: username, decoration: InputDecoration(labelText: "Username")),
            TextField(controller: password, decoration: InputDecoration(labelText: "Password"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(onPressed: doLogin, child: Text("Login")),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RegisterPage()),
                );
              },
              child: Text("Belum punya akun? Register"),
            )
          ],
        ),
      ),
    );
  }
}
