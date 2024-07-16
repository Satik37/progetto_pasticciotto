import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive design
    ScreenUtil.init(context,
        designSize: const Size(375, 812), minTextAdapt: true);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(
              //   height: 10.h,
              // ),
              // --- app name
              Text(
                "PROGETTO PASTICCIOTTO",
                style: GoogleFonts.pirataOne(
                  fontSize: 37.sp,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    const Shadow(
                      blurRadius: 25.0,
                      color: Colors.amber,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              // --- image
              ConstrainedBox(
                constraints: BoxConstraints(
                  //maxHeight: 0.3.sh,
                  maxWidth: 0.9.sw,
                ),
                child: Image.asset('images/DeathsRamble.png'),
              ),
              // title
              SizedBox(height: 5.h),
              Text(
                "The taste of death",
                style: GoogleFonts.almendra(
                  fontSize: 37.sp,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    const Shadow(
                      blurRadius: 25.0,
                      color: Color.fromARGB(255, 67, 0, 122),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              // subtitle
              Text(
                "Feel the irony of death in these situational puzzles.",
                textAlign: TextAlign.center,
                style: GoogleFonts.bellefair(
                  color: const Color.fromARGB(155, 255, 255, 255),
                  fontSize: 23.sp,
                  shadows: [
                    const Shadow(
                      blurRadius: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.h),
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
