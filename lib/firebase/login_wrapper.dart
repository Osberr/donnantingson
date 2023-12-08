import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:donnatignson/menuprincipal.dart';
import 'package:donnatignson/login_page.dart';
import 'firebase_usermodel.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);

    if (user == null) {
      return LoginPage(); //pantalla cuando usuario no es valido
    } else {
      return MenuPrincipal(); //pantalla cuando usuario es valido
    }
  }
}
