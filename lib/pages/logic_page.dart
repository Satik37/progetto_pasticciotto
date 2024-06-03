import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/puzzles_tile.dart';
import 'package:sushi/pages/puzzles_detail_page.dart';
import 'package:sushi/themes/colors.dart';

class LogicPage extends StatefulWidget {
  const LogicPage({super.key});

  @override
  State<LogicPage> createState() => _LogicPageState();
}

class _LogicPageState extends State<LogicPage> {
  // List of image paths
  final List<Map<String, String>> puzzles = [
    {
      'path': 'images/danzaDeLaMuerte10.png',
      'name': 'Puzzle uno 1',
      'description': 'Descrizione puzzle 1',
      'answer': 'Risposta completa per il puzzle 1',
    },
    {
      'path': 'images/danceOfDeath.png',
      'name': 'Puzzle 2',
      'description': 'This is the description of the puzzle two2',
      'answer': 'answer to the puzzle two2',
    },
    {
      'path': 'images/danzaDeLaMuerte8.png',
      'name': 'Puzzle 3',
      'description': 'This is the description of the puzzle 3',
      'answer': 'answer to the puzzle 3',
    },
    {
      'path': 'images/danzaDeLaMuerte6.png',
      'name': 'Puzzle 4',
      'description': 'This is the description of the puzzle 4',
      'answer': 'answer to the puzzle 4',
    },
    {
      'path': 'images/danzaDeLaMuerte5.png',
      'name': 'Puzzle 5',
      'description': 'This is the description of the puzzle 5',
      'answer': 'answer to the puzzle 5',
    },
    {
      'path': 'images/danzaDeLaMuerte4.png',
      'name': 'Puzzle 6',
      'description': 'This is the description of the puzzle 6',
      'answer': 'answer to the puzzle 6',
    },
    {
      'path': 'images/danzaDeLaMuerte3.png',
      'name': 'Puzzle 7',
      'description': 'This is the description of the puzzle 7',
      'answer': 'answer to the puzzle 7',
    },
    {
      'path': 'images/danzaDeLaMuerte.png',
      'name': 'Puzzle 8',
      'description': 'This is the description of the puzzle 8',
      'answer': 'answer to the puzzle 8',
    },
    {
      'path': 'images/archangelMichael.png',
      'name': 'Puzzle 9',
      'description': 'This is the description of the puzzle 9',
      'answer': 'answer to the puzzle 9',
    },

    //'images/danzaDeLaMuerte09.png',

    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        // ----- Background color

        backgroundColor: const Color.fromARGB(255, 100, 100, 100),

        // ----- Body

        body: Stack(
          fit: StackFit.expand,

          // ----- Add background image
          children: [
            Image.asset(
              'images/skull18.png',
              fit: BoxFit.cover,
            ),

            // ----- Sliver app bar

            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.blue,
                  expandedHeight: 200,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/devilDrugs.png',
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Logic and Deduction',
                      style: GoogleFonts.dmSerifDisplay(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                      ),
                    ),
                    centerTitle: true,
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                // end of bar

                // sliver list

                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      // promo banner

                      Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.orange,
                            width: 2,
                          ),
                        ),
                        margin: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 0, top: 20),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // promo message

                                  Text(
                                    'Venture into the abyss: where logic meets lunacy.',
                                    style: GoogleFonts.dmSerifDisplay(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),

                            // Add more content widgets here
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                buildImages(),
              ],
            ),
          ],
        ),
      );

  // image grid

  Widget buildImages() => SliverToBoxAdapter(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          primary: false,
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          itemCount: puzzles.length,
          itemBuilder: (context, index) {
            final puzzle = puzzles[index];
            return PuzzlesTile(
              imagePath: puzzle['path']!,
              puzzleName: puzzle['name']!,
              puzzleColor: Colors.blue, // Customize the color as needed
              onTap: () {
                // Navigate to a new page for each puzzle
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PuzzleDetailPage(puzzle: puzzle),
                  ),
                );
              },
            );
          },
        ),
      );
}
