import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool textoAnimated = false;

  @override
  void initState(){
    super.initState();

    Future.delayed(
      Duration(microseconds: 300),
      (){
        setState(() {
          textoAnimated = true;
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(86, 161, 226, 1),
      body: Stack( children: [
      AnimatedPositioned(
        duration: const Duration(seconds: 1),
        top: textoAnimated ? 200: 50,
        left: textoAnimated ? 0 : 0,
      child: Image.asset('assets/logo.png')
      ),
      Positioned(
        bottom: 200,
        left: 12,
        child: Text('Você é fraco, lhe falta brio!', style: TextStyle(
          fontSize: 20, color: Colors.white,
        ),
        ),
        ),
    ],
    ),
      );
  }
}