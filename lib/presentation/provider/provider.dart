import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seneca/infrastructures/models/user.dart';
import 'package:seneca/utils/getUser.dart';

class AppProvider extends ChangeNotifier {
  String user = "";
  final getUser = GetUser();

  bool compruebaLogin(String usuario, String password) {
    user = usuario;
    return usuario != "" && usuario == password && password != "";
  }

  bool compruebaLoginGoogle() {
    User? userGoogle = FirebaseAuth.instance.currentUser;
    user = userGoogle!.displayName!;
    return user.isNotEmpty && compruebaEnLista(userGoogle.email!) ;
  }

  bool compruebaEnLista(String email) {
    List<Usuario> lista = getUser.getUser() as List<Usuario>;
    for (Usuario x in lista) {
      if (x.email == FirebaseAuth.instance.currentUser!.email) {
        return true;
      }
    }
    return false;
  }
}
