import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_cielo/nav/navbar.dart';
import 'package:radio_cielo/components/home/home.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      child: Scaffold(

        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              child: const ChatEncabezado(),
            ),
            const Divider(
              height: 20.0,
            ),
            Container(
              child: chatPrincipal(),
            )
          ],
        ),
      ),
    );
  }
}

class ChatEncabezado extends StatelessWidget {
  const ChatEncabezado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
        BackButton(
          onPressed:() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MenuNavegacion(),
            ));
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Chats",
            style: GoogleFonts.adamina(fontSize: 20.0),
          ),
        ),

      ],
    ),
  );
  }
}




Widget chatPrincipal() {
  return Column(

  );
}
