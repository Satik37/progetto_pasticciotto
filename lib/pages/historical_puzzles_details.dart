import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoricalPuzzlesDetails extends StatefulWidget {
  final Map<String, String> historicalPuzzle;

  const HistoricalPuzzlesDetails({super.key, required this.historicalPuzzle});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(

  @override
  State<HistoricalPuzzlesDetails> createState() => _HistoricalPuzzlesDetails();
}

class _HistoricalPuzzlesDetails extends State<HistoricalPuzzlesDetails>
    with SingleTickerProviderStateMixin {
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
        return Scaffold(
          // ----- app bar

          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 50, 50, 50),
                    Color.fromARGB(255, 244, 67, 54),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
            title: Text(
              widget.historicalPuzzle['name']!,
              style: GoogleFonts.pirataOne(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 30.sp,
                shadows: [
                  const Shadow(
                    blurRadius: 25.0,
                    color: Color.fromARGB(255, 244, 67, 54),
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 35.sp, // Set the size of the arrow icon
                color: const Color.fromARGB(
                    255, 255, 255, 255), // Set the color of the arrow icon
                shadows: const [
                  Shadow(
                    blurRadius: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
//////////////******************************************************************************************************** */

          // ----- body

          body: Stack(
            fit: StackFit.expand,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //       colors: [
              //         Color.fromARGB(255, 132, 72, 130),
              //         Color.fromARGB(255, 50, 50, 50),
              //       ],
              //     ),
              //   ),
              // ),
              Image.asset(
                widget.historicalPuzzle['path']!,
                fit: BoxFit.cover,
                color: const Color.fromARGB(255, 75, 75, 75),
                colorBlendMode: BlendMode.darken,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: _topAlignmentAnimation.value,
                    end: _bottomAlignmentAnimation.value,
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(255, 244, 67, 54),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ----- Question puzzle

                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 48, 11, 11)
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color.fromARGB(255, 244, 67, 54),
                                width: 2.0,
                              ),
                            ),
                            child: Text(
                              widget.historicalPuzzle['description']!,
                              style: GoogleFonts.bellefair(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 23.sp,
                                //fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 25.0,
                                    color: Color.fromARGB(255, 244, 67, 54),
                                    offset: Offset(2.0, 2.0),
                                  )
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // ----- Space between question and button

                    SizedBox(height: 20.h),

                    // ----- Button
                    ElevatedButton(
                      onPressed: () {
                        // ----- Answer window pop up
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Stack(
                                fit: StackFit.expand,

                                // ----- Background image + frame

                                children: [
                                  Image.asset(
                                    widget.historicalPuzzle['path']!,
                                    fit: BoxFit.cover,
                                    //color: Colors.purple.withOpacity(0.5),
                                    colorBlendMode: BlendMode.darken,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: _topAlignmentAnimation.value,
                                        end: _bottomAlignmentAnimation.value,
                                        colors: [
                                          const Color.fromARGB(255, 50, 50, 50),
                                          const Color.fromARGB(255, 244, 67, 54)
                                              .withOpacity(0.7),
                                        ],
                                      ),
                                      // can change border color here
                                      borderRadius: BorderRadius.circular(20.r),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 244, 67, 54),
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  // ----- Box with the answer text

                                  Padding(
                                    padding: EdgeInsets.all(20.w),
                                    child: SingleChildScrollView(
                                      child: Center(
                                        child: Container(
                                          padding: EdgeInsets.all(20.w),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                    255, 48, 11, 11)
                                                .withOpacity(0.8),
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 244, 67, 54),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,

                                            // ----- Answer title
                                            children: [
                                              Text(
                                                'Answer :',
                                                style: GoogleFonts.pirataOne(
                                                  fontSize: 30.sp,
                                                  color: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  shadows: [
                                                    const Shadow(
                                                      blurRadius: 25.0,
                                                      color: Color.fromARGB(
                                                          255, 244, 67, 54),
                                                      offset: Offset(2.0, 2.0),
                                                    )
                                                  ],
                                                ),
                                              ),

                                              // Some space

                                              SizedBox(height: 20.h),

                                              // ----- Detailed answer

                                              Text(
                                                widget.historicalPuzzle[
                                                    'answer']!,
                                                style: GoogleFonts.bellefair(
                                                  fontSize: 23.sp,
                                                  color: Colors.white,
                                                  shadows: [
                                                    Shadow(
                                                      blurRadius: 25.0,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 244, 67, 54),
                                                      offset: Offset(2.0, 2.0),
                                                    )
                                                  ],
                                                ),
                                                textAlign: TextAlign.center,
                                              ),

                                              // Some space

                                              SizedBox(height: 20.h),

                                              // ----- Close button

                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                  ),
                                                  side: BorderSide(
                                                    color: const Color.fromARGB(
                                                        255, 244, 67, 54),
                                                    width: 2.w,
                                                  ),
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                              255, 50, 50, 50)
                                                          .withOpacity(0.6),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 30.w,
                                                    vertical: 15.h,
                                                  ),

                                                  // ----- add shadow to button
                                                  elevation: 5.0,
                                                ),
                                                child: Text(
                                                  'Hide',
                                                  style: GoogleFonts.federant(
                                                    fontSize: 25.sp,
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    shadows: [
                                                      const Shadow(
                                                        blurRadius: 25.0,
                                                        color: Color.fromARGB(
                                                            255, 244, 67, 54),
                                                        offset:
                                                            Offset(2.0, 2.0),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },

                      // ----- customize SHOW ANSWER button
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          side: BorderSide(
                            color: const Color.fromARGB(255, 244, 67, 54),
                            width: 2.w,
                          ),
                        ),
                        backgroundColor: const Color.fromARGB(255, 48, 11, 11)
                            .withOpacity(0.7),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 15.h,
                        ),
                      ),
                      child: Text(
                        'Show Answer',
                        style: GoogleFonts.federant(
                          fontSize: 25.sp,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          //fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                              blurRadius: 25.0,
                              color: Color.fromARGB(255, 244, 67, 54),
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
