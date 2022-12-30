
import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          const Image(image: AssetImage('assets/landscape.jpg')),

          // Title
          const title(),

          // Button Section
          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
            child: const Text('Reprehenderit sunt nisi culpa do eu nisi qui. Nulla culpa anim aliqua cillum veniam enim nostrud deserunt nulla. Lorem incididunt enim nisi ipsum aliqua ut irure anim laboris amet ex do tempor dolore. Laborum proident minim tempor ad magna reprehenderit ea. Reprehenderit sint dolore proident do amet incididunt proident quis. Id tempor aliquip ad nisi qui esse esse anim. Sint esse incididunt aute ullamco. Lorem voluptate exercitation labore consequat fugiat nostrud. Elit cillum exercitation velit fugiat sunt qui dolor consequat ex laborum labore officia aliquip velit. Sunt consectetur do velit cillum amet sit est ex Lorem ut eu nisi. Qui Lorem qui non exercitation occaecat elit occaecat sint culpa id sit velit ad incididunt. Elit aute ex tempor officia ut aute minim sint dolore Lorem proident laborum cupidatat aute.')
          )

        ],
      )
   );
  }
}

class title extends StatelessWidget {
  const title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 20 ),
      child: Row(
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start  ,
            children: const [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold ),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45)),
            ],
          ),

          Expanded(child: Container()),

          const Icon( Icons.star, color: Colors.red, ),
          const Text('4.3')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [

          CustomButton( icon: Icons.call, text: 'Call' ),
          CustomButton( icon: Icons.near_me, text: 'Route' ),
          CustomButton( icon: Icons.share, text: 'Share' ),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Icon(this.icon, color: Colors.blue, size: 30),
        Text(this.text, style: const TextStyle( color: Colors.blue ),),

      ],
    );
  }
}
