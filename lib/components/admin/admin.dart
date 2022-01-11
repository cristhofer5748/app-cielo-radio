import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class AdminApp extends StatelessWidget {
  const AdminApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Orientation media = MediaQuery.of(context).orientation;
    final responsive = MediaQuery.of(context).size;

    double Versiculos = 350.0;

    if (media == Orientation.landscape) {
      Versiculos = responsive.width - 50.0;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30.0),
            child: encabezado(),
          ),
          Container(
            child: seccionVersiculo(Versiculos),
          ),
          Container(
            child: locutoresSemanales(),
          )
        ],
      ),
    );
  }
}

Widget encabezado() {
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
            height: 80.0,
            width: 200.0,
          ),
        ),
      ])
    ],
  ));
}

Widget seccionVersiculo(double ancho) {
  return SafeArea(
    child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          margin: const EdgeInsets.only(right: 180.0),
          child: Text(
            "Sección de Versiculo",
            style: GoogleFonts.acme(fontSize: 20, color: Colors.grey.shade800),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              width: ancho,
              height: 450.0,
              decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        margin: const EdgeInsets.only(right: 280.0),
                        child: Text("Titulo",
                            style: GoogleFonts.openSans(
                                fontSize: 15, color: Colors.white)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10.0),
                        margin: const EdgeInsets.only(top: 1),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.acme(
                                fontSize: 20, color: Colors.grey.shade800),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        margin: const EdgeInsets.only(right: 270.0),
                        child: Text("Versiculo",
                            style: GoogleFonts.openSans(
                                fontSize: 15, color: Colors.white)),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10.0),
                          child: TextFormField(
                            maxLines: 20,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              labelStyle: GoogleFonts.acme(
                                  fontSize: 20, color: Colors.grey.shade800),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: FlatButton(
                          color: Colors.amber,
                          onPressed: () {
                            //final route = MaterialPageRoute(
                            //builder: (context) => const AdminApp());
                          },
                          child: Text(
                            "Actualizar",
                            style: GoogleFonts.aclonica(
                                fontSize: 20, color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.amber)),
                        ),
                      ),
                      const Divider(
                        height: 10.0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget locutoresSemanales() {
  
  
  List<String> images = [
    "https://micarrerauniversitaria.com/wp-content/uploads/2018/03/locutor-1.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];


  return SafeArea(
    child: Column(
      children: <Widget>[
        const Divider(
          height: 20.0,
          color: Colors.transparent,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          margin: const EdgeInsets.only(right: 80.0),
          child: Text(
            "Sección de Locutores Semanales",
            style: GoogleFonts.acme(fontSize: 20, color: Colors.grey.shade800),
          ),
        ),
        Container(
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0)
            
          ),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                
                images[index],
                fit: BoxFit.fill,
              );
            },
            itemCount: images.length,
            viewportFraction: 0.9,
            scale: 0.9,
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
          ),
        ),
        const Divider(
          height: 50.0,
          color: Colors.transparent,
        )
      ],
    ),
  );
}

Widget seccionBiblicas() {
  return Container();
}
