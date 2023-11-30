import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_screen_task/models/cat_data.dart';

class ImportantDates extends StatelessWidget {
  const ImportantDates({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                "Important Dates",
                style: GoogleFonts.notoSansTangsa(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                height: h * 0.15,
                width: w,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: catData['dates'].length,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (context, index) {
                    final element = catData['dates'][index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 45.w,
                                height: 42.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(69, 84, 175, 249),
                                ),
                                child: element['icon']),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    element["name"],
                                    style: GoogleFonts.notoSansTangsa(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp),
                                  ),
                                  Text(
                                    element['date_time'],
                                    style: GoogleFonts.notoSansTangsa(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(
                          element['age'],
                          style: GoogleFonts.notoSansTangsa(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
