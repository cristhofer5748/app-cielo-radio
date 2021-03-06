import 'package:flutter/material.dart';


class IconContainer extends StatelessWidget {

  final String url;
  const IconContainer({Key? key, required this.url}): super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: 220.0,
      child:  CircleAvatar(
        radius: 50.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(url),
      ),
    );
  }
}