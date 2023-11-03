import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{

  String user ="";

  bool compruebaLogin (String usuario, String password){

    user = usuario;
    return usuario != "" && usuario == password && password != "";

  }

}