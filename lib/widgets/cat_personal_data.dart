import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_screen_task/models/cat_data.dart';

class CatPersonalData extends StatelessWidget {
  const CatPersonalData({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * 0.2,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //to make the edges to be equal like squares I used the same dimensions
            child: SizedBox(
              height: 150.w,
              width: 150.w,
              child: Stack(
                children: [
                  Container(
                    width: 150.w,
                    height: 150.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 241, 240, 240),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60.w,
                          backgroundImage: NetworkImage(catData['photo']),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                catData['name'],
                style: GoogleFonts.notoSansTangsa(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              Text(
                catData['species'],
                style: GoogleFonts.notoSansTangsa(
                    color: const Color.fromARGB(255, 195, 194, 194),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
