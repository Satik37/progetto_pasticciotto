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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 50, 50, 50),
                Color.fromARGB(255, 33, 149, 243),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        title: Text(
          puzzle['name']!,
          style: GoogleFonts.dmSerifDisplay(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            shadows: [
              Shadow(
                blurRadius: 25.0,
                color: const Color.fromARGB(255, 33, 149, 243),
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 35, // Set the size of the arrow icon
            color: const Color.fromARGB(
                255, 255, 255, 255), // Set the color of the arrow icon
            shadows: [
              Shadow(
                blurRadius: 25.0,
                color: Color.fromARGB(255, 0, 0, 0),
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      // ----- body

      body: Stack(
        fit: StackFit.expand,
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //       colors: [
          //         Color.fromARGB(255, 132, 72, 130),
          //         Color.fromARGB(255, 50, 50, 50),
          //       ],
          //     ),
          //   ),
          // ),
          Image.asset(
            puzzle['path']!,
            fit: BoxFit.cover,
            color: const Color.fromARGB(255, 75, 75, 75),
            colorBlendMode: BlendMode.darken,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.transparent,
                  Color.fromARGB(255, 33, 149, 243),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ----- Question puzzle

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 11, 30, 48).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromARGB(255, 33, 149, 243),
                            width: 2.0,
                          ),
                        ),
                        child: Text(
                          puzzle['description']!,
                          style: GoogleFonts.dmSerifDisplay(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30,
                            //fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 25.0,
                                color: const Color.fromARGB(255, 33, 149, 243),
                                offset: Offset(2.0, 2.0),
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
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
                                //color: Colors.purple.withOpacity(0.5),
                                colorBlendMode: BlendMode.darken,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      const Color.fromARGB(255, 50, 50, 50),
                                      Color.fromARGB(255, 33, 149, 243)
                                          .withOpacity(0.7),
                                    ],
                                  ),
                                  // can change border color here
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 33, 149, 243),
                                    width: 2.0,
                                  ),
                                ),
                              ),

                              // ----- Box with the answer text

                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SingleChildScrollView(
                                  child: Center(
                                    child: Container(
                                      padding: const EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                                255, 11, 30, 48)
                                            .withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 33, 149, 243),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,

                                        // ----- Answer title
                                        children: [
                                          Text(
                                            'Answer:',
                                            style: GoogleFonts.dmSerifDisplay(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 25.0,
                                                  color: const Color.fromARGB(
                                                      255, 33, 149, 243),
                                                  offset: Offset(2.0, 2.0),
                                                )
                                              ],
                                            ),
                                          ),

                                          // Some space

                                          const SizedBox(height: 20),

                                          // ----- Detailed answer

                                          Text(
                                            puzzle['answer']!,
                                            style: GoogleFonts.dmSerifDisplay(
                                              fontSize: 25,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 25.0,
                                                  color: const Color.fromARGB(
                                                      255, 33, 149, 243),
                                                  offset: Offset(2.0, 2.0),
                                                )
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
                                                    BorderRadius.circular(20),
                                              ),
                                              side: BorderSide(
                                                color: const Color.fromARGB(
                                                    255, 33, 149, 243),
                                                width: 2,
                                              ),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                          255, 50, 50, 50)
                                                      .withOpacity(0.6),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 30,
                                                vertical: 15,
                                              ),
                                              // ----- add shadow to button
                                              elevation: 5.0,
                                            ),
                                            child: Text(
                                              'Hide',
                                              style: GoogleFonts.dmSerifDisplay(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromARGB(
                                                    255, 255, 255, 255),
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 25.0,
                                                    color: const Color.fromARGB(
                                                        255, 33, 149, 243),
                                                    offset: Offset(2.0, 2.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                        color: const Color.fromARGB(255, 33, 149, 243),
                        width: 2,
                      ),
                    ),
                    backgroundColor:
                        Color.fromARGB(255, 11, 30, 48).withOpacity(0.7),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  child: Text(
                    'Show Answer',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 25.0,
                          color: const Color.fromARGB(255, 33, 149, 243),
                          offset: Offset(2.0, 2.0),
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
    );
  }
}
