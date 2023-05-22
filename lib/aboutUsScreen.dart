import 'package:collectify_application/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF130f40),
        title: Text('About Us',
            style: TextStyle(color: Color.fromARGB(247, 255, 255, 255))),
      ),
      body: Column(
        children: [AppTitle(), AppDescription()],
      ),
      drawer: MyAppBar(context),
    );
  }

  Column AppTitle() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Column contents vertically,
            children: [
              Image.asset(
                '../assets/logo1.png',
                width: 125,
                height: 125,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Collectify',
                style: GoogleFonts.lobsterTwo(fontSize: 60),
              ),
            ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            '../assets/color_paletter.jpg',
            width: 250,
            height: 150,
          ),
        ]),
      ],
    );
  }

  Container AppDescription() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 50),
        child: RichText(
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
          softWrap: true,
          text: TextSpan(
            text: 'Collectify',
            style: GoogleFonts.lobsterTwo(
              fontSize: 30,
              color: Color(0xFF30326b),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
            children: <TextSpan>[
              TextSpan(
                text:
                    ' is a gallery application showcasing a collection of fauna and flora around the world. With its user-friendly interface, Collectify enables users to explore and learn about these creatures and plants through vivid images, detailed descriptions, and engaging facts. Whether you are a seasoned naturalist or simply curious about the animal or plant kingdom. Collectify offers an immersive and informative experience that is both fun and educational.',
                style: GoogleFonts.robotoSlab(
                  fontSize: 15,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
