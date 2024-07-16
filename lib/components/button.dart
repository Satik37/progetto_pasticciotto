import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 100, 100, 100),
          borderRadius: BorderRadius.circular(40.r),
        ),
        padding: EdgeInsets.symmetric(
          vertical: screenWidth * 0.03,
          horizontal: screenWidth * 0.06,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text,
              style: GoogleFonts.federant(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: screenWidth * 0.05,
                shadows: [
                  const Shadow(
                    blurRadius: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
            ),

            SizedBox(width: screenWidth * 0.02),

            // icon
            Icon(
              FontAwesomeIcons.chevronRight,
              size: screenWidth * 0.05,
              color: const Color.fromARGB(255, 255, 255, 255),
              shadows: const [
                Shadow(
                  blurRadius: 15.0,
                  color: Color.fromARGB(255, 255, 145, 0),
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
