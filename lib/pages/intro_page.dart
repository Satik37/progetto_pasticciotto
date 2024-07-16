import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size to make everything responsive
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: screenHeight * 0.02,
              ),
              // --- app name
              Text(
                "PROGETTO   PASTICCIOTTO",
                style: GoogleFonts.pirataOne(
                  fontSize: screenWidth * 0.1,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    const Shadow(
                      blurRadius: 15.0,
                      color: Colors.amberAccent,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              // --- image
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: screenHeight * 0.3,
                  maxWidth: screenWidth * 0.7,
                ),
                child: Image.asset('images/DeathsRamble.png'),
              ),
              // title
              Text(
                "The taste of death",
                style: GoogleFonts.almendra(
                  fontSize: screenWidth * 0.08,
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    const Shadow(
                      blurRadius: 15.0,
                      color: Color.fromARGB(255, 67, 0, 122),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              // subtitle
              Text(
                "Feel the irony of death in these situational puzzles.",
                style: GoogleFonts.bellefair(
                  color: const Color.fromARGB(155, 255, 255, 255),
                  //height: 2.h,
                  fontSize: screenWidth * 0.04,
                  shadows: [
                    const Shadow(
                      blurRadius: 15.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              // --- 3 buttons
              // start
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
      ),
    );
  }
}
