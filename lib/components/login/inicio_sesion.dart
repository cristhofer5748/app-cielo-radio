import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_cielo/components/admin/admin.dart';
import 'package:radio_cielo/components/login/login.dart';
import 'package:radio_cielo/utils/responsive.dart';
import 'package:radio_cielo/widgets/icon_container.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final _keyform = GlobalKey<FormState>();

    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 1200 : 1200,
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.white],
              stops: const [0.2, 0.5],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginApp(),
                    ));
                  },
                ),
              ],
            ),
            Form(
              key: _keyform,
              child: Column(
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
                      const Divider(
                        height: 50,
                        color: Colors.transparent,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Ingrese su Correo',
                            labelStyle: GoogleFonts.acme(
                                fontSize: 20, color: Colors.grey.shade800),
                            fillColor: Colors.transparent,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 10.0,
                                )),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 25,
                        color: Colors.transparent,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: TextFormField(
                          
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Ingrese su Contrase??a',
                            labelStyle: GoogleFonts.acme(
                                fontSize: 20, color: Colors.grey.shade800),
                            fillColor: Colors.transparent,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 10.0,
                                )),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Ingrese una Contrase??a";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 60.0,
                    color: Colors.transparent,
                  ),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      color: Colors.grey[700],
                      onPressed: () {
                        //if (_keyform.currentState.validate()) {
                          
                        //}


                        final route = MaterialPageRoute(
                            builder: (context) => const AdminApp());
                        Navigator.push(context, route);
                        /*Navigator.of(context).push(
            
                          MaterialPageRoute(
                            builder: (context) => const AdminApp()
                          ),
                        );*/
                      },
                      child: Text(
                        "Iniciar Sesi??n",
                        style: GoogleFonts.aclonica(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
