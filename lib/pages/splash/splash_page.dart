import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(86, 161, 226, 1),
      body: SizedBox(
        width: 1000,
        height: 1000,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('texto 1'),
          Container(
            color: Color.fromARGB(255, 27, 92, 56),
            height: 100,
            width: 100,
          ),
          Text('Texto 2'),
        ],
      ),
      ),
      );
  }
}