import 'package:flutter/material.dart';
import 'database_helper.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final username = TextEditingController();
  final password = TextEditingController();
  final confirm = TextEditingController();
  final phone = TextEditingController();

  void register() async {
    if (password.text != confirm.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password tidak sama"))
      );
      return;
    }

    await DatabaseHelper.instance.registerUser(
      username.text,
      password.text,
      phone.text
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Registrasi berhasil!"))
    );

    Navigator.pop(context); // kembali ke halaman login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: username, decoration: InputDecoration(labelText: "Username")),
            TextField(controller: password, decoration: InputDecoration(labelText: "Password"), obscureText: true),
            TextField(controller: confirm, decoration: InputDecoration(labelText: "Confirm Password"), obscureText: true),
            TextField(controller: phone, decoration: InputDecoration(labelText: "Telepon")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: register, child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
