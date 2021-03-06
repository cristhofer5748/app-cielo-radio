import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:radio_cielo/components/login/login.dart';
import 'package:radio_cielo/screens/verses.dart';
import 'package:radio_cielo/components/admin/admin.dart';
import 'package:radio_cielo/components/chat/chat.dart';
import 'package:radio_cielo/components/contact/contact.dart';
import 'package:radio_cielo/components/home/home.dart';

class MenuNavegacion extends StatefulWidget {
  const MenuNavegacion({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MenuNavegacion> {

  final AdminApp adminApp = const AdminApp();
  final Chat chat = const Chat();
  final Contact contact = const Contact();
  final HomePrincipal homePrincipal = const HomePrincipal();
  final Verses verses = const Verses();
  final LoginApp loginApp = const LoginApp();

   // ignore: unused_field
   Widget _showpage = const HomePrincipal();

  int pageactual = 2;
  Widget _pageOther(int index) {
    switch (index) {
      case 0:
        return  contact;
      case 1:
        return verses;
      case 2:
        return homePrincipal;   
      case 3:
        return chat;
      case 4:
        return loginApp;
      case 5:
        return adminApp;

      default:
        return const HomePrincipal();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.black)
        ),

      
      
      child: CurvedNavigationBar(
        index: pageactual,
        items:  const <Widget>[
          
           Icon(Icons.contact_page, size: 30,),
           Icon(Icons.menu_book, size: 30),
           Icon(Icons.home, size: 30),
           Icon(Icons.chat, size: 30),
           Icon(Icons.person, size: 30),
          
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (int tappedIndex){
          setState(() {
            
            _showpage = _pageOther(tappedIndex);
          });
        },
      ),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          
          child: _showpage,
        ),

      ),
    );
  }
}
