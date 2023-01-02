
import 'package:disenio/widgets/background.dart';
import 'package:disenio/widgets/custom_bottom_navigation.dart';
import 'package:disenio/widgets/page_title.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          // Background
          Background(),

          _HomeBody()

        ],
      ),
      bottomNavigationBar: CustomBotomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          // Titulos
          PageTitle(),

        ],
      ),
    );
  }
}
