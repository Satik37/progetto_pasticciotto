import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/genre_tile.dart';
import 'package:sushi/models/genre.dart';
import 'package:sushi/pages/intro_page.dart';
import 'package:sushi/pages/logic_page.dart';
import 'package:sushi/pages/historical_page.dart';
import 'package:sushi/pages/settings_page.dart';
import 'package:sushi/pages/credits_and_support_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  // create a list of categories
  List genres = [
    // Logic and Deduction
    Genre(name: 'Logic and Deduction', imagePath: 'images/manAndSkull.png'),
    // Historical Fiction
    Genre(name: 'Historical Fiction', imagePath: 'images/medievalWriting.png'),
    // Science
    // Fantasy
    // Mystery
    // Mythology
    // Horror
    // Western
    // Romance
  ];

  // navigate to genre page

  void navigateToGenre(Genre genre) {
    switch (genre.name) {
      case 'Logic and Deduction':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LogicPage()),
        );
        break;
      case 'Historical Fiction':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HistoricalPage()),
        );
        break;
      // Add other cases here as needed
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 150, 150, 150),
            // Another Color,
            Color.fromARGB(255, 100, 100, 100),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Text(
            'PROGETTO PASTICCIOTTO',
            style: GoogleFonts.dmSerifDisplay(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 25,
              shadows: [
                Shadow(
                  blurRadius: 25.0,
                  color: Color.fromARGB(255, 255, 217, 0),
                  offset: Offset(2.0, 2.0),
                )
              ],
            ),
          ),
          centerTitle: true,
        ),

        // Nav Bar

        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 100, 100, 100),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 75, 75, 75),
                ),
                child: Text(
                  'Menu',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                    shadows: [
                      Shadow(
                        blurRadius: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text(
                  'Home',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        blurRadius: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // close drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text(
                  'Genres',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        blurRadius: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // close drawer
                  // navigate to genres section
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        blurRadius: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // close drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Settings()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'Credits and Support',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        blurRadius: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // close drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreditsAndSupport()),
                  );
                },
              ),
            ],
          ),
        ),

        // body

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // promo banner
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(155, 50, 50, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // promo message
                        Text(
                          'Explore the grim stories of your mind.',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: Color.fromARGB(175, 255, 255, 255),
                            shadows: [
                              Shadow(
                                blurRadius: 25.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                                offset: Offset(2.0, 2.0),
                              )
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),

                  // image
                  Expanded(
                    child: Image.asset(
                      'images/skull18.png',
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            // hypothetical search bar

            // const SizedBox(height: 25),

            // categories list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Genres',
                style: GoogleFonts.dmSerifDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(200, 255, 255, 255),
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index) => GenreTile(
                  genre: genres[index],
                  onTap: () => navigateToGenre(genres[index]),
                ),
              ),
            ),

            const SizedBox(height: 25),
            // future puzzles
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(155, 50, 50, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  // image
                  Expanded(
                    child: Image.asset(
                      'images/ancientGreekBoat.png',
                      //  height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 10),

                  //text
                  Flexible(
                    child: Text(
                      'Traveling the universe for new tales.',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Color.fromARGB(175, 255, 255, 255),
                        shadows: [
                          Shadow(
                            blurRadius: 25.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(2.0, 2.0),
                          )
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
    );
  }
}
