import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_screen_task/models/cat_data.dart';

class CareTakers extends StatelessWidget {
  const CareTakers({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16),
      child: SizedBox(
        width: w,
        height: h * 0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                "Caretakers",
                style: GoogleFonts.notoSansTangsa(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25.w,
                  backgroundImage: NetworkImage(catData['caretakers']['photo']),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      catData['caretakers']['name'],
                      style: GoogleFonts.notoSansTangsa(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    ),
                    Text(
                      catData['caretakers']['email'],
                      style: GoogleFonts.notoSansTangsa(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
