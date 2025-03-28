import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/Screens/chatUi.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyChatUI()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF13181C),
      body: Center(
        child: Image.asset(
          "assets/images/whatsappLogo.png",
          height: 100,
          width: 100,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 35),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 18,
          children: [
            CircularProgressIndicator.adaptive(
              backgroundColor: Colors.white,
            ),
            Text(
              "Develop By Sagar Dhadke",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
