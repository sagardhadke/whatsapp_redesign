import 'package:flutter/material.dart';

class MyChatUI extends StatelessWidget {
  const MyChatUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0B1014),
      appBar: AppBar(
        backgroundColor: Color(0XFF0B1014),
        foregroundColor: Colors.white,
        title: Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Icon(Icons.qr_code_2_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
