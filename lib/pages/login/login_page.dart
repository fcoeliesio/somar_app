import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/custom_button.dart';
import 'package:flutter_app/widgets/custom_edit.dart';
import 'package:flutter_app/widgets/custom_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController textUsuario = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
        child: Column(
          children: [
            Positioned(child:
            CustomLogo(
            ),
            ),
            const SizedBox(height: 30),
            CustomEdit(
              controller: textUsuario,
              hintText: 'Informe o seu E-mail',
              icon: Icons.person,
            ),
            const SizedBox(height: 40),
            CustomEdit(
              controller: password, 
              hintText: 'Informe a sua senha', 
              icon: Icons.password,
              isPassword: true,),
            const SizedBox(height: 40),
            CustomButton(
              caption: 'Entrar', 
              onTap: (){},)
          ],
        ),
      ),
    );
  }
}