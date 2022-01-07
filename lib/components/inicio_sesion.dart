import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_cielo/screens/admin.dart';
import 'package:radio_cielo/utils/responsive.dart';
import 'package:radio_cielo/widgets/icon_container.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      
      body: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 1200 : 1200,
          
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Colors.blue,
            Colors.white,
          ], begin: Alignment.topCenter),
        ),
        child: ListView(
          
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          children: <Widget>[
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
                      "Administradores",
                      style: GoogleFonts.permanentMarker(
                          fontSize: 35, color: Colors.black),
                    ),
                    const Divider(
                      height: 25,
                      color: Colors.transparent,
                    ),
                    Text(
                      "Radio Cielo",
                      style: GoogleFonts.aclonica(
                          fontSize: 20, color: Colors.black),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Ingrese su Correo'),
                    ),
                    const Divider(
                      height: 25,
                      color: Colors.transparent,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Ingrese su Contraseña'),
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
                    color: Colors.grey[700],
                    onPressed: () {
                      final route = MaterialPageRoute(
                          builder: (context) => const AdminApp());
                      Navigator.push(context, route);
                    },
                    child: Text(
                      "Iniciar Sesión",
                      style: GoogleFonts.aclonica(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
