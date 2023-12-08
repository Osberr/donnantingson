import 'package:donnatignson/components/Convocatorias.dart';
import 'package:donnatignson/components/Donadores.dart';
import 'package:donnatignson/components/Perfil.dart';
import 'package:donnatignson/components/requisitos.dart';
import 'package:donnatignson/components/Solicitar.dart';
import 'package:donnatignson/components/agradecimiento.dart';
import 'package:donnatignson/components/donar.dart';
import 'package:donnatignson/components/historialdonacion.dart';
import 'package:donnatignson/login_page.dart';
import 'package:flutter/material.dart';
import 'package:donnatignson/firebase/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MenuPrincipal extends StatelessWidget {
  MenuPrincipal({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.withOpacity(0.5),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Fila 1

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    _auth.signOut();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                    Fluttertoast.showToast(msg: "Sesion cerrado");
                  },
                  child: Text('Cerrar Sesion'),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 60.0),
                      child: Container(
                          width: 109,
                          height: 147,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Container(
                                  width: 109,
                                  height: 113,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: FilledButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Solicitar()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Colors.red, width: 1.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                      ),
                                      child: Center(
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/img/boton1.png')))),
                                ),
                              ),
                              Text(
                                'Solicitar',
                                style: TextStyle(
                                    color: Color.fromRGBO(240, 36, 36, 1),
                                    fontSize: 20),
                              )
                            ],
                          ))),
                  Container(
                      width: 109,
                      height: 147,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Container(
                              width: 109,
                              height: 113,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                              child: FilledButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Donar()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Colors.red, width: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/img/boton2.png')))),
                            ),
                          ),
                          Text(
                            'Donar',
                            style: TextStyle(
                                color: Color.fromRGBO(240, 36, 36, 1),
                                fontSize: 20),
                          )
                        ],
                      ))
                ],
              ),

              //Fila 2

              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 60.0),
                        child: Container(
                            width: 109,
                            height: 147,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.0),
                                  child: Container(
                                    width: 109,
                                    height: 113,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: FilledButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          side: BorderSide(
                                              color: Colors.red, width: 1.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                        ),
                                        child: Center(
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/img/boton3.png')))),
                                  ),
                                ),
                                Text(
                                  'Donadores',
                                  style: TextStyle(
                                      color: Color.fromRGBO(240, 36, 36, 1),
                                      fontSize: 20),
                                )
                              ],
                            ))),
                    Container(
                        width: 109,
                        height: 147,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Container(
                                width: 109,
                                height: 113,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40)),
                                child: FilledButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Perfil()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.red, width: 1.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                    child: Center(
                                        child: Image(
                                            image: AssetImage(
                                                'assets/img/boton4.png')))),
                              ),
                            ),
                            Text(
                              'Perfil',
                              style: TextStyle(
                                  color: Color.fromRGBO(240, 36, 36, 1),
                                  fontSize: 20),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Container(
                          width: 135,
                          height: 176,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Container(
                                  width: 109,
                                  height: 113,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: FilledButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        convocatorias()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Colors.red, width: 1.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                      ),
                                      child: Center(
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/img/boton5.png')))),
                                ),
                              ),
                              Text(
                                'Convocatorias',
                                style: TextStyle(
                                    color: Color.fromRGBO(240, 36, 36, 1),
                                    fontSize: 20),
                              )
                            ],
                          ))),
                  Container(
                      width: 160,
                      height: 176,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Container(
                              width: 109,
                              height: 113,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                              child: FilledButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                RequisitosDonador()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Colors.red, width: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/img/boton7.png')))),
                            ),
                          ),
                          Text(
                            'Requisitos',
                            style: TextStyle(
                                color: Color.fromRGBO(240, 36, 36, 1),
                                fontSize: 20),
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
