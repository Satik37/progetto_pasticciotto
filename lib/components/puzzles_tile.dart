import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PuzzlesTile extends StatelessWidget {
  final String imagePath;
  final String puzzleName;
  final Color puzzleColor;
  final VoidCallback onTap;

  const PuzzlesTile({
    super.key,
    required this.imagePath,
    required this.puzzleName,
    required this.puzzleColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: puzzleColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.orange,
            width: 2,
          ),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Text(
            puzzleName,
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
