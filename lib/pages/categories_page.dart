import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/genre_tile.dart';
import 'package:sushi/models/genre.dart';
import 'package:sushi/pages/logic_page.dart';
import 'package:sushi/pages/historical_page.dart';
import '../components/nav_bar.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

// --- advanced drawer
class _CategoriesPageState extends State<CategoriesPage>
    with SingleTickerProviderStateMixin {
  final _advancedDrawerController = AdvancedDrawerController();

// --- animations
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
    // --- first color animation
    _topAlignmentAnimation = _createAnimation([
      Alignment.topLeft,
      Alignment.topRight,
      //Alignment.bottomRight,
      //Alignment.bottomLeft,
    ]);
    // --- second color animation
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
  // OLD ANIMATION
  // TweenSequence<Alignment>(
  //     [
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.topLeft, end: Alignment.topRight),
  //         weight: 1,
  //       ),
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.topRight, end: Alignment.bottomRight),
  //         weight: 1,
  //       ),
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.bottomRight, end: Alignment.bottomLeft),
  //         weight: 1,
  //       ),
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.bottomLeft, end: Alignment.topLeft),
  //         weight: 1,
  //       ),
  //     ],
  //   ).animate(_controller);

  //   // second color animation
  //   _bottomAlignmentAnimation = TweenSequence<Alignment>(
  //     [
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.bottomRight, end: Alignment.bottomLeft),
  //         weight: 1,
  //       ),
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.bottomLeft, end: Alignment.topLeft),
  //         weight: 1,
  //       ),
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.topLeft, end: Alignment.topRight),
  //         weight: 1,
  //       ),
  //       TweenSequenceItem<Alignment>(
  //         tween: Tween<Alignment>(
  //             begin: Alignment.topRight, end: Alignment.bottomRight),
  //         weight: 1,
  //       ),
  //     ],
  //   ).animate(_controller);

  //   // controller
  //   _controller.repeat();
  // }

// Create a list of categories
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

// handle menu button
  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

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

  // --- ADVANCED SIDEBAR

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    return AdvancedDrawer(
      backdrop: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: _topAlignmentAnimation.value,
                end: _bottomAlignmentAnimation.value,
                colors: const [
                  Color.fromARGB(255, 50, 50, 50),
                  Color.fromARGB(255, 75, 75, 75),
                  Color.fromARGB(255, 100, 100, 100),
                  Color.fromARGB(255, 125, 125, 125),
                  Color.fromARGB(255, 165, 125, 85),
                  Color.fromARGB(255, 255, 145, 0),
                ],
              ),
            ),
          );
        },
      ),
      controller: _advancedDrawerController,
      //openRatio: 0.5,
      openScale: 0.85,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      // --- DRAWER
      drawer: const NavDrawer(),

      // --- MAIN BUILDING
      // --- APP BAR ---
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: _topAlignmentAnimation.value,
                end: _bottomAlignmentAnimation.value,
                colors: const [
                  Color.fromARGB(255, 150, 150, 150),
                  Color.fromARGB(255, 50, 50, 50),
                ],
              ),
            ),
            child: child,
          );
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,

              // --- icon
              leading: IconButton(
                onPressed: _handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedDrawerController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 450),
                      child: Icon(
                        value.visible
                            ? FontAwesomeIcons.xmark
                            : FontAwesomeIcons.bars,
                        key: ValueKey<bool>(value.visible),
                        size: 30.sp,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shadows: const [
                          Shadow(
                            blurRadius: 25.0,
                            color: Color.fromARGB(255, 255, 145, 0),
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // --- title
              title: Text(
                'PROGETTO PASTICCIOTTO',
                style: GoogleFonts.pirataOne(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 35.sp,
                  shadows: [
                    const Shadow(
                      blurRadius: 25.0,
                      color: Color.fromARGB(255, 255, 217, 0),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
              ),
              centerTitle: true,
            ),
          ),

          // --- BODY ---

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- PROMO BAR ---
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 75, 75, 75),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 30.w),
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
                            style: GoogleFonts.federant(
                              fontSize: 20.sp,
                              color: const Color.fromARGB(255, 215, 215, 215),
                              shadows: [
                                const Shadow(
                                  blurRadius: 25.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(2.0, 2.0),
                                )
                              ],
                            ),
                          ),

                          // SizedBox(height: 1.h),
                        ],
                      ),
                    ),

                    // image
                    Expanded(
                      child: Image.asset(
                        'images/skull18.png',
                        height: 100.h,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h),
              // hypothetical search bar

              // const SizedBox(height: 25),

              // categories list
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Genres',
                  style: GoogleFonts.pirataOne(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadows: [
                      const Shadow(
                        blurRadius: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10.h),

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

              SizedBox(height: 25.h),
              // --- APP BAR DOWN ---
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 75, 75, 75),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 25.h),
                padding: EdgeInsets.all(10.w),
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
                    SizedBox(width: 10.h),

                    //text
                    Flexible(
                      child: Text(
                        'Traveling the universe for new tales...',
                        style: GoogleFonts.federant(
                          fontSize: 20.sp,
                          color: const Color.fromARGB(255, 215, 215, 215),
                          shadows: [
                            const Shadow(
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
      ),
    );
  }
}
