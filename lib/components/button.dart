import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 100, 100, 100),
          borderRadius: BorderRadius.circular(40.r),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
          //horizontal: 25.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text,
              style: GoogleFonts.federant(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 23.sp,
                shadows: [
                  const Shadow(
                    blurRadius: 25.0,
                    color: Colors.orange,
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
            ),

            SizedBox(width: 8.w),

            // icon
            Icon(
              FontAwesomeIcons.chevronRight,
              size: 23.sp,
              color: const Color.fromARGB(255, 255, 255, 255),
              shadows: const [
                Shadow(
                  blurRadius: 25.0,
                  color: Colors.orange,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
