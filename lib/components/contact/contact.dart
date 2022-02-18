import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_cielo/widgets/icon_container.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Orientation media = MediaQuery.of(context).orientation;
    final responsive = MediaQuery.of(context).size;

    double contact = 350.0;

    if (media == Orientation.landscape) {
      contact = responsive.width - 80.0;
    }
    return SizedBox(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(25.0),
              child: encabezadoContact(),
            ),
            Container(
              child: ubicacionTiempoReal(contact),
            ),
            const Divider(
              height: 30.0,
              color: Colors.transparent,
            ),
            Container(
              child: quienesSomos(contact),
            ),
            const Divider(
              height: 30.0,
              color: Colors.transparent,
            ),
            Container(
              child: contactanos(contact),
            ),
            const Divider(
              height: 40.0,
              color: Colors.transparent,
            ),

          ],
        ),
      ),
    );
  }
}

Widget encabezadoContact() {
  return SafeArea(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Administrador",
        style: GoogleFonts.permanentMarker(fontSize: 20, color: Colors.black),
        textAlign: TextAlign.start,
      ),
      Stack(children: [
        Container(
          height: 80.0,
          width: 150.0,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.0)),
          child: Image.asset(
            'images/R.png',
            height: 90.0,
            width: 200.0,
          ),
        ),
      ])
    ],
  ));
}

Widget ubicacionTiempoReal(double ancho) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        margin: const EdgeInsets.only(right: 130.0),
        child: Text(
          "Ubicación en Tiempo Real",
          style: GoogleFonts.acme(fontSize: 20, color: Colors.grey.shade800),
        ),
      ),
      Stack(
        children: [
          Container(
            width: ancho,
            height: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.amber,
            ),
          ),
        ],
      )
    ],
  );
}

Widget quienesSomos(double ancho) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        margin: const EdgeInsets.only(right: 200.0),
        child: Text(
          "Quienes Somos",
          style: GoogleFonts.acme(fontSize: 20, color: Colors.grey.shade800),
        ),
      ),
      Stack(
        children: [
          Container(
              width: ancho,
              height: 380.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.indigo,
              ),
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "CIELO FM 89.1",
                        style:
                            GoogleFonts.robotoCondensed(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 20.0,
                    color: Colors.transparent,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 40.0),
                      child: Text(
                        "Somos un medio de comunicación que nació y existe para alabar a Dios mediante musica y diversos espacios de fé con programación variada.",
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.abel(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: Text(
                        "Nuestra misión es transmitir valores que lleven al oyente a una relación personal con Jesús y como resultado pueda mejorar su estilo de vida para ser un ente de cambio en una sociedad decadente.",
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.abel(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
              ),
        ],
      ),
      
    ],
  );
}

Widget contactanos(double ancho) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        margin: const EdgeInsets.only(right: 200.0),
        child: Text(
          "Contactanos",
          style: GoogleFonts.acme(fontSize: 20, color: Colors.grey.shade800),
        ),
      ),
      Stack(
        children: [
          Container(
              width: ancho,
              height: 380.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.amber,
              ),
              child: ListView(
                children: [
                 
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "CIELO FM 89.1",
                        style:
                            GoogleFonts.robotoCondensed(fontSize: 30, color: Colors.black),
                      ),
                      
                    ),
                  ),
                  const Divider(
                    height: 20.0,
                    color: Colors.transparent,
                  ),
                  const Image(image: AssetImage("images/R.png"))
                  
                ],
              )
              ),
        ],
      ),
      const Divider(
        height: 40.0,
        color: Colors.transparent,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          Container(
            height: 60.0,
            width: 60.0,
            color: Colors.transparent,
            child: const Image(image: AssetImage("images/logoW.png")),
            
          ),

          Text("(502) 4581-7925",
          style: GoogleFonts.robotoCondensed(fontSize: 20, color: Colors.black)
          )
        ],
      ),


      
    ],
  );
}
