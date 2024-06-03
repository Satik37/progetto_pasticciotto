import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PuzzleDetailPage extends StatelessWidget {
  final Map<String, String> puzzle;

  const PuzzleDetailPage({super.key, required this.puzzle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ----- app bar

      appBar: AppBar(
        title: Text(
          puzzle['name']!,
          style: GoogleFonts.dmSerifDisplay(
            color: Colors.green,
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.red,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.tealAccent,
      ),

      // ----- body

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            puzzle['path']!,
            fit: BoxFit.cover,
            color: Colors.purple.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ----- Question puzzle

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.orange,
                            width: 2.0,
                          ),
                        ),
                        child: Text(
                          puzzle['description']!,
                          style: GoogleFonts.dmSerifDisplay(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Colors.red,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // ----- Space between question and button

                      const SizedBox(height: 20),

                      // ----- Button
                      ElevatedButton(
                        onPressed: () {
                          // ----- Answer window pop up
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,

                                  // ----- Background image + frame

                                  children: [
                                    Image.asset(
                                      puzzle['path']!,
                                      fit: BoxFit.cover,
                                      color: Colors.purple.withOpacity(0.5),
                                      colorBlendMode: BlendMode.darken,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        // can change color here
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.orange,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    // ----- Box with the answer text

                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Center(
                                        child: Container(
                                          padding: const EdgeInsets.all(20.0),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.yellow.withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Colors.orange,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,

                                            // ----- Answer title
                                            children: [
                                              Text(
                                                'Titolo Risposta:',
                                                style:
                                                    GoogleFonts.dmSerifDisplay(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green,
                                                  shadows: [
                                                    Shadow(
                                                      offset: Offset(2.0, 2.0),
                                                      blurRadius: 3.0,
                                                      color: Colors.red,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // Some space

                                              const SizedBox(height: 20),

                                              // ----- Detailed answer

                                              Text(
                                                puzzle['answer']!,
                                                style:
                                                    GoogleFonts.dmSerifDisplay(
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                  shadows: [
                                                    Shadow(
                                                      offset: Offset(1.0, 1.0),
                                                      blurRadius: 2.0,
                                                      color: Colors.red,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.center,
                                              ),

                                              // Some space

                                              const SizedBox(height: 20),

                                              // ----- Close button

                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  side: BorderSide(
                                                    color: Colors.orange,
                                                    width: 2,
                                                  ),
                                                  backgroundColor: Colors.teal
                                                      .withOpacity(0.7),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 30,
                                                    vertical: 15,
                                                  ),

                                                  // ----- add shadow to button
                                                  elevation: 5.0,
                                                ),
                                                child: Text(
                                                  'Hide',
                                                  style: GoogleFonts
                                                      .dmSerifDisplay(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        Colors.lightBlueAccent,
                                                    shadows: [
                                                      Shadow(
                                                        offset:
                                                            Offset(1.0, 1.0),
                                                        blurRadius: 2.0,
                                                        color: Colors.red,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },

                        // ----- customize SHOW ANSWER button
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ),
                          ),
                          backgroundColor: Colors.teal.withOpacity(0.7),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                        ),
                        child: Text(
                          'Show Answer',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 25,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 2.0,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
