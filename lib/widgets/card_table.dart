import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SigleCard( color: Colors.blue, icon: Icons.border_all, text: 'General' ),
            _SigleCard( color: Colors.green, icon: Icons.car_rental, text: 'Transport' ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard( color: Colors.red, icon: Icons.shop, text: 'Shopping' ),
            _SigleCard( color: Colors.orange, icon: Icons.cloud_done, text: 'Bill' ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard( color: Colors.greenAccent, icon: Icons.movie_creation_outlined, text: 'Entertainment' ),
            _SigleCard( color: Colors.cyan, icon: Icons.food_bank_outlined, text: 'Grocery' ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard( color: Colors.blueGrey, icon: Icons.move_down, text: 'Move' ),
            _SigleCard( color: Colors.black54, icon: Icons.access_alarm, text: 'Alarm' ),
          ],
        ),
        TableRow(
          children: [
            _SigleCard( color: Colors.lightBlueAccent, icon: Icons.access_time_filled, text: 'Time' ),
            _SigleCard( color: Colors.redAccent, icon: Icons.accessible_forward_outlined, text: 'Forward' ),
          ],
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({
    super.key, 
    required this.icon, 
    required this.color, 
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    
    return _CardBackground(
       child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          const SizedBox( height: 10 ),
          Text(this.text, style: TextStyle( color: this.color, fontSize: 18 )),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    super.key, 
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5 ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 67, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
