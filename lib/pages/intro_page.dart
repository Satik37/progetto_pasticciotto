import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  // app name
                  Text(
                    "PROGETTO   PASTICCIOTTO",
                    style: GoogleFonts.pirataOne(
                      fontSize: 35.sp,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        const Shadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 255, 217, 0),
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),

                  // image
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset('images/DeathsRamble.png'),
                  ),

                  SizedBox(
                    height: 25.h,
                  ),

                  // title
                  Text(
                    "The taste of death",
                    style: GoogleFonts.almendra(
                      fontSize: 35.sp,
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        const Shadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 67, 0, 122),
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 5.h,
                  ),
                  // subtitle
                  Text(
                    "Feel the irony of death in these situational puzzles.",
                    style: GoogleFonts.bellefair(
                      color: const Color.fromARGB(155, 255, 255, 255),
                      //height: 2.h,
                      fontSize: 16.sp,
                      shadows: [
                        const Shadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25.h,
                  ),
                  // get started button
                  MyButton(
                    text: "Get Started",
                    onTap: () {
                      // go to category page
                      Navigator.pushNamed(context, '/categoriespage');
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // settings
                  MyButton(
                    text: "Settings",
                    onTap: () {
                      // go to settings page
                      Navigator.pushNamed(context, '/settings');
                    },
                  ),
                  SizedBox(
                    height: 15.h,
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
        },
      ),
    );
  }
}
