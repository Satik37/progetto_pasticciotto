import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/puzzles_tile.dart';
import 'package:sushi/pages/logic_puzzles_details.dart';

class LogicPage extends StatefulWidget {
  const LogicPage({super.key});

  @override
  State<LogicPage> createState() => _LogicPageState();
}

class _LogicPageState extends State<LogicPage> {
  // List of image paths
  final List<Map<String, String>> puzzles = [
    //  1
    {
      'path': 'images/danzaDeLaMuerte10.png',
      'name': 'Poisoned Drink',
      'description':
          'Two friends order the same drink at a restaurant. One drinks it slowly and survives; the other drinks it quickly and dies. The drink was poisoned. Why did one survive?',
      'answer':
          'The poison was in the ice. The friend who drank slowly allowed the ice to melt, releasing the poison. The friend who drank quickly did not. LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM ',
    },
    //  2
    {
      'path': 'images/danceOfDeath.png',
      'name': 'The Silent Witness',
      'description':
          'A famous painter was found dead in his locked studio. The only way in or out was through the door, and the key was found in his pocket. On the easel was an unfinished painting depicting a faceless man. The painter\'s apprentice, who had no alibi, claimed innocence. What clue reveals the murderer?',
      'answer':
          'The faceless man in the painting. The painter was trying to reveal the identity of his killer, who was someone he knew but couldn\'t explicitly name – the apprentice.',
    },
    //  3
    {
      'path': 'images/danzaDeLaMuerte8.png',
      'name': 'The Vanishing Neighbor',
      'description':
          'A woman noticed her reclusive neighbor, Mr. Black, hadn\'t been seen for days. She entered his home and found a disturbing scene: a chair turned over, a broken vase, and a note that read, "It\'s behind you." Just then, she heard a creak. What did she discover?',
      'answer':
          'The woman realized the note referred to something in the room behind her. Turning around, she discovered a hidden passage leading to a basement where Mr. Black was held captive.',
    },
    //  4
    {
      'path': 'images/danzaDeLaMuerte6.png',
      'name': 'The Cursed Mirror',
      'description':
          'A man bought an antique mirror rumored to show the true nature of one\'s soul. Every morning, he noticed the reflection showing something ominous: a shadowy figure behind him. Fearing for his life, he smashed the mirror, only to find a hidden compartment behind it. What was inside?',
      'answer':
          'Inside the compartment was a diary detailing a murder committed by the mirror\'s previous owner. The shadowy figure was the ghost of the victim, trying to reveal the truth.',
    },
    //  5
    {
      'path': 'images/danzaDeLaMuerte5.png',
      'name': 'The Betrayed Soldier',
      'description':
          'During the war, a soldier received an anonymous letter warning of a traitor among his squad. The next day, he found his best friend dead with a note saying, "Trust no one." How can the soldier identify the traitor?',
      'answer':
          'The traitor is the person who wrote the anonymous letter. They sought to create distrust and eliminate the best friend, who likely suspected them.',
    },
    //  6
    {
      'path': 'images/danzaDeLaMuerte4.png',
      'name': 'The Vanishing Lighthouse Keeper',
      'description':
          'The lighthouse keeper was last seen entering the lighthouse during a storm. When the storm passed, he was gone, leaving behind a lighthouse full of lit candles and a diary entry, "The light must never go out." Where did he go?',
      'answer':
          'The keeper discovered a hidden passage within the lighthouse that led to a secret cavern. The lit candles were his way of ensuring the light remained, hinting at his knowledge of the passage.',
    },
    //  7
    {
      'path': 'images/danzaDeLaMuerte3.png',
      'name': 'Logical puzzle 7',
      'description': 'This is the description of the puzzle 7',
      'answer': 'answer to the puzzle 7',
    },
    //  8
    {
      'path': 'images/danzaDeLaMuerte.png',
      'name': 'Logical puzzle 8',
      'description': 'This is the description of the puzzle 8',
      'answer': 'answer to the puzzle 8',
    },
    //  9
    {
      'path': 'images/archangelMichael.png',
      'name': 'Logical puzzle 9',
      'description': 'This is the description of the puzzle 9',
      'answer': 'answer to the puzzle 9',
    },

    //'images/danzaDeLaMuerte09.png',

    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) => Container(
        // ----- Background color
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 33, 149, 243),
              // Colors.grey,
              Color.fromARGB(255, 50, 50, 50),
            ],
          ),
        ),
        // backgroundColor: const Color.fromARGB(255, 100, 100, 100),

        // ----- Body
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            fit: StackFit.expand,

            // ----- Add background image
            children: [
              //   Image.asset(
              //     'images/skull18.png',
              //     fit: BoxFit.cover,
              //   ),

              // ----- sliver app bar

              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    expandedHeight: 200,
                    floating: true,
                    pinned: true,
                    flexibleSpace: Stack(
                      children: [
                        // Custom gradient background for SliverAppBar
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color.fromARGB(250, 33, 149, 243),
                                Color.fromARGB(250, 50, 50, 50),
                              ],
                            ),
                          ),
                        ),
                        FlexibleSpaceBar(
                          background: Image.asset(
                            'images/devilDrugs.png',
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            'Logic and Deduction',
                            style: GoogleFonts.dmSerifDisplay(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 25,
                              shadows: [
                                Shadow(
                                  blurRadius: 25.0,
                                  color:
                                      const Color.fromARGB(255, 33, 149, 243),
                                  offset: Offset(2.0, 2.0),
                                )
                              ],
                            ),
                          ),
                          centerTitle: true,
                        ),
                      ],
                    ),
                    leading: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 25.0,
                            color: Color.fromARGB(255, 33, 149, 243),
                            offset: Offset(2.0, 2.0),
                          )
                        ],
                      ),
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
                            color: const Color.fromARGB(155, 50, 50, 50),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.blue,
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
                                      'Venture into the abyss:                 where logic meets lunacy.',
                                      style: GoogleFonts.dmSerifDisplay(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 25.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            offset: Offset(2.0, 2.0),
                                          )
                                        ],
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
              puzzleColor: const Color.fromARGB(
                  175, 33, 149, 243), // Customize the color as needed
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
