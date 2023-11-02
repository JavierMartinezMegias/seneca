import 'package:flutter/material.dart';
import 'package:seneca/screens/login_screen.dart';

void main() => runApp(const Seneca());

class Seneca extends StatelessWidget {
  const Seneca({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seneca',
      home: LoginScreen()
    );
  }
}