import 'package:flutter/material.dart';
import 'package:flutter_app/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Lembretes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const SplashPage(),
    );
  }
}