import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{

  String user ="";

  bool compruebaLogin (String usuario, String password){

    user = usuario;
    return usuario != "" && usuario == password && password != "";

  }

  bool compruebaLoginGoogle (){

    User? userGoogle = FirebaseAuth.instance.currentUser;
    user = userGoogle!.displayName!;
    return user.isNotEmpty;
    
  }

}