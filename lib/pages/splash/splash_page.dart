import 'package:flutter/material.dart';
import 'package:flutter_app/routes.dart';
import 'package:flutter_app/widgets/custom_logo.dart';

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
      Duration(seconds: 2),
      (){
        setState(() {
          textoAnimated = true;
        });
      }


    );

    Future.delayed(
      const Duration(seconds: 2),
      (){
        Navigator.of(context).pushReplacementNamed(Routes.login);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(86, 161, 226, 1),
      body: Stack( children: [
      AnimatedPositioned(
        duration: const Duration(seconds: 4),
        top: textoAnimated ? 300: 50,
        left: textoAnimated ? 120 : 0,
      child: const CustomLogo()
      ),
    ],
    ),
      );
  }
}