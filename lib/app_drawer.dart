import 'package:collectify_application/aboutUsScreen.dart';
import 'package:collectify_application/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

Widget MyAppBar(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color(0xFF130f40),
          ),
          child: HeaderDrawer(),
        ),
        ListDrawer(context)
      ],
    ),
  );
}

Column HeaderDrawer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        '../assets/logo1.png',
        height: 80,
        width: 80,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        'MENU',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    ],
  );
}

//navigator builds wont work REVISE the codes at some point meanwhile I'll go sob over in the corner

Column ListDrawer(BuildContext context) {
  return Column(
    children: [
      ListTile(
        leading: GestureDetector(
          child: Image.asset(
            '../assets/home.png',
            height: 30,
            width: 30,
          ),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          },
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        },
      ),
      SizedBox(
        height: 20,
      ),
      ListTile(
        leading: Image.asset(
          '../assets/animal.png',
          height: 30,
          width: 30,
        ),
        title: Text('Animal Kingdom'),
      ),
      SizedBox(
        height: 20,
      ),
      ListTile(
        leading: Image.asset(
          '../assets/plant.png',
          height: 30,
          width: 30,
        ),
        title: Text('Plant Kingdom'),
      ),
      SizedBox(
        height: 20,
      ),
      ListTile(
        leading: GestureDetector(
          child: Image.asset(
            '../assets/aboutus.png',
            height: 30,
            width: 30,
          ),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const AboutUs()));
          },
        ),
        title: Text('About Us'),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const AboutUs()));
        },
      ),
      SizedBox(
        height: 450,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('All Rights Reserved.')],
      ),
    ],
  );
}
