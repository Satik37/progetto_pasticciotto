import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/models/genre.dart';

class GenreTile extends StatelessWidget {
  final Genre genre;
  final void Function()? onTap;

  const GenreTile({
    super.key,
    required this.genre,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(155, 50, 50, 50),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Expanded(
              child: Image.asset(
                genre.imagePath,
                // height: 100,
                fit: BoxFit.cover,
              ),
            ),
            // text
            Text(
              genre.name,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
                shadows: [
                  Shadow(
                    blurRadius: 25.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
