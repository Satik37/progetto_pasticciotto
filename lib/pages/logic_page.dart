import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/pages/categories_page.dart';
import 'package:sushi/pages/credits_and_support_page.dart';
import 'package:sushi/pages/intro_page.dart';
import 'package:sushi/pages/logic.dart';
import 'package:sushi/pages/settings_page.dart';
import 'package:sushi/themes/colors.dart';

class LogicPage extends StatefulWidget {
  const LogicPage({super.key});

  @override
  State<LogicPage> createState() => _LogicPageState();
}

class _LogicPageState extends State<LogicPage> {
  // create a list of categories
  List logics = [
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
                        'Venture into the abyss: where logic meets lunacy.',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(200, 25, 0, 100),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),

                // image
                Expanded(
                  child: Image.asset(
                    'images/edgarAllanPoe.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // asd

          // categories list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Genres',
              style: GoogleFonts.dmSerifDisplay(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(200, 255, 255, 255),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: logics.length,
          //     itemBuilder: (context, index) => LogicTile(
          //       logic: logics[index],
          //       onTap: () => navigateToLogic(logics[index]),
          //     ),
          //  ),
          //),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
