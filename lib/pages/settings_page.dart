import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/pages/categories_page.dart';
import 'package:sushi/pages/credits_and_support_page.dart';
import 'package:sushi/pages/intro_page.dart';
import 'package:sushi/themes/colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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

            // icon
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset('images/knife.png'),
            ),

            const SizedBox(
              height: 25,
            ),

            // title
            Text(
              "SETTINGS",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
