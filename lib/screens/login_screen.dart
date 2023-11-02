import 'dart:io';

import 'package:flutter/material.dart';
import 'package:seneca/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreen();
}


class _LoginScreen extends State<LoginScreen> {

  bool viewPassword = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 87, 184),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 20.0),
            const Text(
              'iSéneca',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20.0),
            TextField(
              cursorColor: Colors.white,
              controller: userController,             
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.17),
                hintText: 'Usuario',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      style: BorderStyle.solid, color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              cursorColor: Colors.white,
              controller: passwordController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.17),
                suffixIcon: SizedBox(
                  width: 60,
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          viewPassword = !viewPassword;
                        });
                      },
                      icon: const Icon(Icons.visibility_outlined)),
                ),
                hintText: 'Contraseña',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      style: BorderStyle.solid, color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      style: BorderStyle.solid, color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              obscureText: viewPassword,
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeScreen())));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                      color: Color.fromARGB(255, 5, 80, 141),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 60.0),
            const Text("No recuerdo mi contraseña",style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationThickness: 2
            ),),
            const SizedBox(height: 100.0),
            Image.file(File('images/JuntaAndalucia.png')),
             const SizedBox(height: 30.0),
             Container(
              margin: const EdgeInsetsDirectional.only(start: 290),
               child: const Text("v11.3.0", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
                
                
               ),),
             )
          ]),
        ));
  }
}
