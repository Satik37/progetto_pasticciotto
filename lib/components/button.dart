import 'package:flutter/material.dart';
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 100, 100, 100),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text,
              style: GoogleFonts.dmSerifDisplay(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
                shadows: [
                  Shadow(
                    blurRadius: 25.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
            ),

            const SizedBox(width: 10),

            // icon
            Icon(
              Icons.chevron_right,
              color: const Color.fromARGB(255, 255, 255, 255),
              shadows: [
                Shadow(
                  blurRadius: 25.0,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(2.0, 2.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
