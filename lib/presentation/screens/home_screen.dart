import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();

    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 500,height: 150,color: Colors.blue,child: const Center(child :Text(
                  'iSéneca',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                        )
                      ),                               
              ),
              const SizedBox(height: 50),
            ],
          )
        ),
         bottomNavigationBar: Container(
          decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
              spreadRadius: 3,
            ),
          ],
        ),
           child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  color: const Color.fromARGB(255, 141, 141, 141),
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.home),
                ),
                const Text('Inicio'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  color: const Color.fromARGB(255, 141, 141, 141),
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.calendar_month),
                ),
                const Text('Agenda'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  color: const Color.fromARGB(255, 141, 141, 141),
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.textsms_outlined),
                ),
                const Text('Comunicaciones'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  color: const Color.fromARGB(255, 141, 141, 141),
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.menu),
                ),
                const Text('Menú'),
              ],
            ),
                 ],
               ),
         ),
    );
  }
}
