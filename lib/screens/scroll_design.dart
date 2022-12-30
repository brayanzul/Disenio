import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),

          // Main Content-Column
          MainContent()

        ],
      )
   );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text("Hola Mundo!!"),
        Text("Hola Mundo!!"),
        Text("Hola Mundo!!"),
        Text("Hola Mundo!!"),
      ],
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image( image: AssetImage('assets/scroll-1.png') )
    );
  }
}