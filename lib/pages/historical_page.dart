import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/image_widget.dart';
import 'package:sushi/themes/colors.dart';

class HistoricalPage extends StatefulWidget {
  const HistoricalPage({super.key});

  @override
  State<HistoricalPage> createState() => _HistoricalPageState();
}

class _HistoricalPageState extends State<HistoricalPage> {
  // List of image paths
  final List<String> imagePaths = [
    'images/archangelMichael.png',
    'images/danzaDeLaMuerte10.png',
    'images/danceOfDeath.png',
    'images/danzaDeLaMuerte.png',
    'images/danzaDeLaMuerte3.png',
    'images/danzaDeLaMuerte4.png',
    'images/danzaDeLaMuerte5.png',
    'images/danzaDeLaMuerte6.png',
    'images/danzaDeLaMuerte8.png',
    //'images/danzaDeLaMuerte09.png',

    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 100, 100, 100),

        // sliver app bar

        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.red,
              expandedHeight: 200,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/knightHorse.png',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  'Historical Fiction',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),
                ),
                centerTitle: true,
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
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
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
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
                                'Echoes of the fallen: history\'s darkest hours reimagined.',
                                style: GoogleFonts.dmSerifDisplay(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(height: 5),
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
      );

  // image grid

  Widget buildImages() => SliverToBoxAdapter(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          primary: false,
          shrinkWrap: true,
          itemCount: imagePaths.length,
          itemBuilder: (context, index) => ImageWidget(
            imagePath: imagePaths[index],
          ),
        ),
      );

  // something else
}
