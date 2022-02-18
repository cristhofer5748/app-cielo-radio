

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_cielo/widgets/icon_container.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({Key? key}) : super(key: key);

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    final Orientation media = MediaQuery.of(context).orientation;
    final responsive = MediaQuery.of(context).size;

    double Versiculos = 350.0;
    double radio = 350.0;

    if (media == Orientation.landscape) {
      Versiculos = responsive.width - 50.0;
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          title:  Text("Radio Cielo",
            style: GoogleFonts.permanentMarker(fontSize: 20, color: Colors.white)
          ),
          backgroundColor: Colors.black87
        ),
        backgroundColor: Colors.white,
        body: ListView(
           //height: MediaQuery.of(context).size.height,

          scrollDirection: Axis.vertical,
        shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(25.0),
              child: encabezado(),
            ),
            Container(
              child: locutoresSemanales(),
            ),
            Container(
              child: reproducirRadio(radio),
            ),
            const Divider(
              height: 50,
              color: Colors.transparent,
            )
            
          ],
        ),
      ),
    );
  }
}

Widget encabezado()
{
  return Column(
    children: <Widget>[

    ],
  );
}

Widget locutoresSemanales()
{
  List<String> images = [
    "https://micarrerauniversitaria.com/wp-content/uploads/2018/03/locutor-1.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
    "https://micarrerauniversitaria.com/wp-content/uploads/2018/03/locutor-1.jpg",
    "https://micarrerauniversitaria.com/wp-content/uploads/2018/03/locutor-1.jpg",
    "https://micarrerauniversitaria.com/wp-content/uploads/2018/03/locutor-1.jpg",
    "https://micarrerauniversitaria.com/wp-content/uploads/2018/03/locutor-1.jpg",
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
            "Locutores Semanales",
            style: GoogleFonts.acme(fontSize: 20, color: Colors.grey.shade800),
          ),
        ),
        Container(
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
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
            
          
          ),
        ),
        const Divider(
          height: 50.0,
          color: Colors.transparent,
        ),

      ],
    ),
  );
}

Widget reproducirRadio(double ancho) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        margin: const EdgeInsets.only(right: 170.0),
        child: Text(
          ' TRANSMITIENDO DESDE\n MOMOSTENANGO, TOTONICAPAN',
          style: GoogleFonts.acme(fontSize: 12, color: Colors.black),
        ),
      ),
      Stack(
        children: [
          Container(
            width: ancho,
            height: 400.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Colors.black ,
              
            ),
            child: Column(children: const <Widget>[
              IconContainer(url: "images/R.png"),

            ],),
            
          ),
          
        ],
      )
    ],
  );
}