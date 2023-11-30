import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/care_takers.dart';
import 'widgets/cat_body_details.dart';
import 'widgets/cat_personal_data.dart';
import 'widgets/important_dates.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Add Profile",
            style: GoogleFonts.notoSansTangsa(
                fontSize: 18.sp, color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.h),
            child: const Divider(
              thickness: 0.1,
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.arrow_back_rounded,
            color: Colors.grey[700],
          )),
      body: ListView(
        children: [
          Column(
            children: [
              //space from top
              Gap(
                h * 0.025,
              ),
              CatPersonalData(h: h),
              CatBodyDetails(h: h, w: w),
              ImportantDates(h: h, w: w),
              CareTakers(w: w, h: h),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Add to Contacts",
                    style: GoogleFonts.notoSansTangsa(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                  ),
                ),
              ),
              Gap(
                h * 0.025,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
