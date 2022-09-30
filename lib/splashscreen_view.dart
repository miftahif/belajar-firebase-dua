import 'dart:async';

//import 'package:latihan_warung/views/home.dart';
import 'package:belajar_firebase_dua/bagian_login/mainan.dart';
import 'package:belajar_firebase_dua/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:latihan_warung/views/bagian_login/mainan.dart';
// import 'package:latihan_warung/views/home.dart';

//import 'package:bootcamp_tes2/home.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Mainan();
        // return MyApp();
        //return LatihanWarung();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset(
          "assets/images/abab.png",
          width: 500,
          height: 500,
        ),
      ),
    );
  }
}
