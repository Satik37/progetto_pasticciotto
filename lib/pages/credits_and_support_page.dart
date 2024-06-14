import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/pages/categories_page.dart';
import 'package:sushi/pages/intro_page.dart';
import 'package:sushi/pages/settings_page.dart';
import 'package:sushi/themes/colors.dart';

class CreditsAndSupport extends StatefulWidget {
  const CreditsAndSupport({super.key});

  @override
  State<CreditsAndSupport> createState() => _CreditsAndSupportState();
}

class _CreditsAndSupportState extends State<CreditsAndSupport> {
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
                shadows: [
                  Shadow(
                    blurRadius: 25.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
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

// nav bar

      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 100, 100, 100),
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
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: const Color.fromARGB(255, 0, 0, 0),
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
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 22,
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: const Color.fromARGB(255, 0, 0, 0),
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
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 22,
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: const Color.fromARGB(255, 0, 0, 0),
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
                      builder: (context) => const CategoriesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: GoogleFonts.dmSerifDisplay(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 22,
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: const Color.fromARGB(255, 0, 0, 0),
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
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 22,
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(2.0, 2.0),
                    ),
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
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),

            // image with color filter and shadow
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.7),
                      spreadRadius: 5,
                      blurRadius: 100,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(0.7),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset('images/writerWoman.png'),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // title
            Text(
              "CREDITS AND SUPPORT",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Color.fromARGB(255, 255, 255, 255),
                shadows: [
                  Shadow(
                    blurRadius: 25.0,
                    color: const Color.fromARGB(255, 244, 67, 245),
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
