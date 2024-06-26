import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/puzzles_tile.dart';
import 'historical_puzzles_details.dart';

class HistoricalPage extends StatefulWidget {
  const HistoricalPage({super.key});

  @override
  State<HistoricalPage> createState() => _HistoricalPageState();
}

class _HistoricalPageState extends State<HistoricalPage>
    with SingleTickerProviderStateMixin {
  // List of image paths
  final List<Map<String, String>> historicalPuzzles = [
    //  1
    {
      'path': 'images/danzaDeLaMuerte10.png',
      'name': 'The Disappearing General',
      'description':
          'During the Roman Empire, General Marcus was sent to the northern territories and never returned. Years later, his diary was found, ending abruptly with the words, "I have found the truth." What happened to General Marcus?LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM ',
      'answer':
          'General Marcus discovered a betrayal within his ranks. Before he could reveal the traitors, they captured and killed him, ensuring his silence.LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM LOREM IPSUM ',
    },
    //  2
    {
      'path': 'images/danceOfDeath.png',
      'name': 'The Pharaoh\'s Secret',
      'description':
          'An ancient Egyptian pharaoh was buried with a secret that was supposed to bring prosperity to the kingdom. However, the kingdom fell into ruin after his death. What was the secret?',
      'answer':
          'The pharaoh had hidden a map to a vast gold mine. When he died, the secret was lost, and the kingdom couldn\'t sustain its economy without the resource.',
    },
    //  3
    {
      'path': 'images/danzaDeLaMuerte8.png',
      'name': 'The Vanished Viking',
      'description':
          'A Viking chief led an expedition to a new land but vanished without a trace. Centuries later, an artifact bearing his name is found in a distant desert. How did it get there?',
      'answer':
          'The chief was captured by traders from a distant land and sold into slavery. The artifact was a personal item he managed to keep.',
    },
    //  4
    {
      'path': 'images/danzaDeLaMuerte6.png',
      'name': 'The Hidden Treasure',
      'description':
          'A pirate buried his treasure on an island and left a map with cryptic clues. Despite many attempts, it was never found. What was the key to the map?',
      'answer':
          'The key to the map was a specific astronomical event that only occurred every 50 years. Without this timing, the clues made no sense.',
    },
    //  5
    {
      'path': 'images/danzaDeLaMuerte5.png',
      'name': 'The Ghost Ship',
      'description':
          'In the 17th century, a ship set sail with a precious cargo and vanished. It reappeared decades later, abandoned. What happened to the crew?',
      'answer':
          'The crew was stricken by an unknown disease. They abandoned the ship in search of help on a nearby island but succumbed, leaving the ship to drift.',
    },
    //  6
    {
      'path': 'images/danzaDeLaMuerte4.png',
      'name': 'The Phantom Knight',
      'description':
          'During the Crusades, a knight known for his ruthless tactics disappeared. Years later, his armor was found buried beneath a church, untouched by time. The inscription read, "Condemned by the righteous." What happened to the knight?',
      'answer':
          'The knight was betrayed by his fellow crusaders who couldn\'t bear his brutality. They lured him into the church, where he was entombed alive.',
    },
    //  7
    {
      'path': 'images/danzaDeLaMuerte3.png',
      'name': 'The Missing Pharaoh',
      'description':
          'An Egyptian pharaoh vanished, leaving behind a cryptic message: "The sands reveal all at dusk." His body was never found, and his tomb lay empty. What does the message mean?',
      'answer':
          'The pharaoh\'s body was buried in a secret chamber that could only be found when the setting sun cast specific shadows on the sands, revealing the entrance.',
    },
    //  8
    {
      'path': 'images/danzaDeLaMuerte.png',
      'name': 'The Cursed Treasure',
      'description':
          'A pirate captain buried his treasure on a deserted island. His map, found years later, had the warning: "Greed leads to doom." Many sought the treasure but never returned. Why?',
      'answer':
          'The treasure was buried in a cave that flooded with the tide. Those who lingered too long, driven by greed, were trapped and drowned.',
    },
    //  9
    {
      'path': 'images/archangelMichael.png',
      'name': 'Historical puzzle 9',
      'description': 'This is the description of the puzzle 9',
      'answer': 'answer to the puzzle 9',
    },

    //'images/danzaDeLaMuerte09.png',

    // Add more image paths as needed
  ];

  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    // first color animation
    _topAlignmentAnimation = _createAnimation([
      Alignment.topLeft,
      Alignment.topRight,
      //Alignment.bottomRight,
      //Alignment.bottomLeft,
    ]);

    _bottomAlignmentAnimation = _createAnimation([
      Alignment.bottomRight,
      Alignment.bottomLeft,
      //Alignment.topLeft,
      //Alignment.topRight,
    ]);

    _controller.repeat();
  }

  Animation<Alignment> _createAnimation(List<Alignment> alignments) {
    return TweenSequence<Alignment>(
      alignments
          .asMap()
          .entries
          .map((entry) => TweenSequenceItem(
                tween: Tween(
                    begin: entry.value,
                    end: alignments[(entry.key + 1) % alignments.length]),
                weight: 1,
              ))
          .toList(),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

// --- MAIN BUILDING

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: _topAlignmentAnimation.value,
              end: _bottomAlignmentAnimation.value,
              colors: const [
                Color.fromARGB(255, 244, 67, 54),
                Color.fromARGB(255, 152, 58, 52),
                Color.fromARGB(255, 50, 50, 50),
              ],
            ),
          ),
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
                      expandedHeight: 200.h,
                      floating: true,
                      pinned: true,
                      flexibleSpace: Stack(
                        children: [
                          // Custom gradient background for SliverAppBar
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 244, 67, 54),
                                  Color.fromARGB(255, 50, 50, 50),
                                ],
                              ),
                            ),
                          ),
                          FlexibleSpaceBar(
                            background: Image.asset(
                              'images/knightHorse.png',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              'Historical Fiction',
                              style: GoogleFonts.pirataOne(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 35.sp,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 25.0,
                                    color: Color.fromARGB(255, 244, 67, 54),
                                    offset: Offset(2.0, 2.0),
                                  )
                                ],
                              ),
                            ),
                            centerTitle: true,
                          ),
                        ],
                      ),

                      // Arrow to move back to the previous page
                      leading: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.angleLeft,
                          size: 35.sp,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          shadows: const [
                            Shadow(
                              blurRadius: 25.0,
                              color: Color.fromARGB(255, 244, 67, 54),
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
                                color: const Color.fromARGB(255, 244, 67, 54),
                                width: 2.w,
                              ),
                            ),
                            margin: EdgeInsets.only(
                                left: 25.w, right: 25.w, bottom: 0, top: 20.h),
                            padding: EdgeInsets.all(10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // promo message

                                      Text(
                                        'Echoes of the fallen:                     history\'s darkest hours reimagined.',
                                        style: GoogleFonts.federant(
                                          fontSize: 20.sp,
                                          color: Colors.white,
                                          shadows: [
                                            const Shadow(
                                              blurRadius: 25.0,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              offset: Offset(2.0, 2.0),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                    ],
                                  ),
                                ),

                                // add more widgets here
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
      },
    );
  }
  // image grid

  Widget buildImages() => SliverToBoxAdapter(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
          ),
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.all(10.w),
          itemCount: historicalPuzzles.length,
          itemBuilder: (context, index) {
            final historicalPuzzle = historicalPuzzles[index];
            return PuzzlesTile(
              imagePath: historicalPuzzle['path']!,
              puzzleName: historicalPuzzle['name']!,
              puzzleColor: const Color.fromARGB(175, 244, 67, 54)
                  .withOpacity(0.7), // Customize the color as needed
              onTap: () {
                // Navigate to a new page for each puzzle
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoricalPuzzlesDetails(
                        historicalPuzzle: historicalPuzzle),
                  ),
                );
              },
            );
          },
        ),
      );
  // something else
}
