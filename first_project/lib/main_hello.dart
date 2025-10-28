import 'package:flutter/material.dart';

class MainHello extends StatefulWidget {
  const MainHello({super.key});

  @override
  State<MainHello> createState() => _MainHelloState();
}

class _MainHelloState extends State<MainHello> {
  String textName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlue
              ),

              child: Text(
                "Click",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              onPressed: () => sendMessage(),
            ),

            SizedBox(height: 20),
            Text(
              textName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendMessage() {
    setState(() {
      textName = "Shizuku-chan";
    });
  }
}