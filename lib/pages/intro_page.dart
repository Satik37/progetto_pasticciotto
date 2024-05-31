import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 75, 75, 75),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),
            // app name
            Text(
              "PROGETTO   PASTICCIOTTO",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            // icon
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset('images/DeathsRamble.png'),
            ),

            const SizedBox(
              height: 25,
            ),

            // title
            Text(
              "THE TASTE OF DEATH",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            // subtitle
            Text(
              "Feel the irony of death in these situational puzzles.",
              style: TextStyle(
                color: const Color.fromARGB(155, 255, 255, 255),
                height: 2,
                fontSize: 13,
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                // go to category page
                Navigator.pushNamed(context, '/categoriespage');
              },
            ),
            // settings
            MyButton(
              text: "Settings",
              onTap: () {
                // go to settings page
                Navigator.pushNamed(context, '/settings');
              },
            ),
            // credits + donations
            MyButton(
              text: "Credits and Support",
              onTap: () {
                // go to credits page
                Navigator.pushNamed(context, '/creditsandsupport');
              },
            ),
          ],
        ),
      ),
    );
  }
}
