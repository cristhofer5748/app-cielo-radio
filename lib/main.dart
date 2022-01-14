import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_cielo/components/login/inicio_sesion.dart';
import 'package:radio_cielo/nav/navbar.dart';
import 'package:radio_cielo/components/admin/admin.dart';

import 'components/admin/admin.dart';


void main(){

  /*SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);*/
 runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


 return  MaterialApp(
      debugShowCheckedModeBanner: false,
      

     //home: MenuNavegacion()
     initialRoute: 'Home',
     routes: <String, WidgetBuilder>
     {
       'Home' : (BuildContext context) => const MenuNavegacion(),
       'sing_in' : (BuildContext context) =>  const InicioSesion(),
       'admin' :((BuildContext context) =>  const AdminApp())
       
     }
      
    );
}}