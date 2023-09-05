import 'package:flutter/material.dart';
import 'package:task0/app/app_images.dart';
import '../main.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    naviatetohome();
  }

  naviatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(AppImages.pic0),
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
