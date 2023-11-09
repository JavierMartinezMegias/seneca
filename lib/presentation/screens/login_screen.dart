import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';

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
   
   final provider = context.watch<AppProvider>();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 87, 184),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(height: 130.0),
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
                style: const TextStyle(color: Colors.white),            
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
                style: const TextStyle(color: Colors.white),
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
                    if(provider.compruebaLogin(userController.text, passwordController.text)){
                      context.goNamed("home");
                    }
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
              const SizedBox(height: 80.0),
              RichText(
                text: TextSpan(
                  children:[
                    const TextSpan(
                      text: "No recuerdo mi contraseña",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 4.0), 
                    ),
                    WidgetSpan(
                      child: Container(
                        margin: const EdgeInsets.only(top: 2.0), 
                        width: 200, 
                        height: 2.0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 130.0),
              Transform.scale(
                scale: 0.8,
                child: Image.asset("assets/images/JuntaAndalucia.png"),
              ),
        
              const SizedBox(height: 20.0),
              Container(
              margin: const EdgeInsetsDirectional.only(start: 290),
                child: const Text("v11.3.0", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
                  
                  
                 ),),
               )
            ]),
          ),
        ));
  }
}
