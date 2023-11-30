import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_screen_task/models/cat_data.dart';

class CatBodyDetails extends StatelessWidget {
  const CatBodyDetails({
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
      height: MediaQuery.of(context).size.height * 0.26,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                "Apperance and distinctive signs",
                style: GoogleFonts.notoSansTangsa(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
            ),
            Text(
              catData['signs'],
              style: GoogleFonts.notoSansTangsa(
                  color: const Color.fromARGB(255, 195, 194, 194),
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                height: h * 0.15,
                width: w,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: catData['data'].length,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (context, index) {
                    final key = catData['data'][index].keys.first;
                    final value = catData["data"][index][key];
                    return SizedBox(
                      height: (h * 0.1) / 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            key,
                            style: GoogleFonts.notoSansTangsa(
                                color: Colors.grey[700], fontSize: 14.sp),
                          ),
                          Text(
                            value,
                            style: GoogleFonts.notoSansTangsa(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
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
