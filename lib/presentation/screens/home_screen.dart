import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),

          actions: [
            IconButton(
              onPressed: () {
                context.goNamed('login');
              },
              icon: const Icon(Icons.close))
          ],
        ),
        body: Center(
          child: Text('Hello :' + provider.user),
        ),
      );
  }
}