import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/pages/categories_page.dart';
import 'package:sushi/pages/credits_and_support_page.dart';
import 'package:sushi/pages/intro_page.dart';
import 'package:sushi/pages/logic.dart';
import 'package:sushi/pages/settings_page.dart';
import 'package:sushi/themes/colors.dart';

class HistoricalPage extends StatefulWidget {
  const HistoricalPage({super.key});

  @override
  State<HistoricalPage> createState() => _HistoricalPageState();
}

class _HistoricalPageState extends State<HistoricalPage> {
  // create a list of categories
  List historical = [
    // Logic and Deduction
    Logic(name: 'Logic and Deduction', imagePath: 'images/manAndSkull.png'),
    // Historical fiction
    Logic(name: 'Historical fiction', imagePath: 'images/medievalWriting.png'),
    // Science
    // Fantasy
    // Mystery
    // Mythology
    // Horror
    // Western
    // Romance
  ];

  // navigate to puzzles (modify)

  //   void navigateToGenre(Genre genre) {
  //   switch (genre.name) {
  //     case 'Logic and Deduction':
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const LogicPage()),
  //       );
  //       break;
  //     case 'Historical fiction':
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const HistoricalPage()),
  //       );
  //       break;
  //     // Add other cases here as needed
  //     default:
  //       break;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 100, 100),

      // app bar

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 100, 100),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          'Progetto Pasticciotto',
          style: GoogleFonts.dmSerifDisplay(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),

// nav bar

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Text(
                'Menu',
                style: GoogleFonts.dmSerifDisplay(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text('Home'),
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
              title: Text('Genres'),
              onTap: () {
                Navigator.pop(context); // close drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
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
              title: Text('Credits and Support'),
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
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
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
                        'Echoes of the fallen: history\'s darkest hours reimagined.',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(200, 75, 10, 10),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),

                // image
                Expanded(
                  child: Image.asset(
                    'images/knightHelmet.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // end body

      // next
    );
  }
  // end of widget

  // widget basic card
}
