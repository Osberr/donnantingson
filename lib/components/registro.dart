import 'package:flutter/material.dart';
import 'package:donnatignson/firebase/firebase_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:donnatignson/firebase/auth.dart';
import 'package:donnatignson/login_page.dart';

class RegistroUsuarioScreen extends StatefulWidget {
  @override
  _RegistroUsuarioScreenState createState() => _RegistroUsuarioScreenState();
}

class _RegistroUsuarioScreenState extends State<RegistroUsuarioScreen> {
  final AuthService _auth = AuthService();

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFED1B24),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: userController,
                    decoration: InputDecoration(
                      labelText: 'Correo',
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () async {
                      dynamic result = await _auth.registerEmailPassword(
                          LoginUser(
                              email: userController.text,
                              password: passwordController.text));
                      if (result.uid == null) {
                        Fluttertoast.showToast(
                            msg:
                                "Algo salio mal al intentar crear cuenta. Verifique si los datos estan correctos");
                        print("ALGO SALIO MAL");
                      } else {
                        Fluttertoast.showToast(
                            msg: "Cuenta creada, intente iniciar sesion");
                        Navigator.of(context).pop();
                        print("intente iniciar sesion ahora o algo alv");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFED1B24),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    ),
                    child: Text(
                      'Registrarse',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginPage()));
                    },
                    child: Text(
                      'Volver',
                      style: TextStyle(fontSize: 16, color: Color(0xFFED1B24)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
