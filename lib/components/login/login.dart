// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_cielo/components/login/inicio_sesion.dart';
import 'package:radio_cielo/nav/navbar.dart';
import 'package:radio_cielo/utils/responsive.dart';


import 'package:radio_cielo/widgets/icon_container.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {

  
  @override
  Widget build(BuildContext context) {

    final Responsive responsive = Responsive.of(context);
   
    return Scaffold(
      
      body: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet?1200:1200,

        ),
        
      
        
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Colors.blue.shade900,
            Colors.white,
          ], begin: Alignment.topCenter),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),

          children: <Widget>[
            Row(
              children: [
                                BackButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MenuNavegacion(),
                    ));
                  },
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const IconContainer(url: 'images/R.png'),
                const Divider(
                  height: 60,
                  color: Colors.transparent,
                ),
                Column(
                  children: [
                    Text(
                      "Bienvenidos",
                      style: GoogleFonts.permanentMarker(
                          fontSize: 35, color: Colors.black),
                    ),
                    Text(
                      "Radio Cielo",
                      style: GoogleFonts.aclonica(
                          fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
                const Divider(
                  height: 100.0,
                  color: Colors.transparent,
                ),
                SizedBox(
                  width: 250,
                  height: 40.0,
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        final route = MaterialPageRoute(builder: (context) => const InicioSesion() );
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Inicio de Sesión",
                        style: GoogleFonts.aclonica(
                            fontSize: 20, color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
        
      ),
    );
  }
}
