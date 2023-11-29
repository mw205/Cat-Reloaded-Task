import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2021.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> catData = {
      'name': "Fiona",
      "species": "Feline | European",
      'signs': "Light brown with white patches",
      'data1': ["Gender", "Size", "Weight"],
      'data2': ["Female", 'Medium', "6 kg"]
    };
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Profile",
          style:
              GoogleFonts.notoSansTangsa(fontSize: 18.sp, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.h),
          child: const Divider(
            thickness: 0.1,
            color: Colors.black,
          ),
        ),
        leading: BackButton(
          color: Colors.grey[700],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 150.w,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    SizedBox(
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
                                  backgroundImage: const NetworkImage(
                                      "https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg?crop=1xw:0.84415xh;center,top&resize=1200:*"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
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
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
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
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: SizedBox(
                            height: 100.h,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          catData['data1'][0],
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.grey[700],
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          catData['data2'][0],
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 0.1,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          catData['data1'][1],
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.grey[700],
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          catData['data2'][1],
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 0.1,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          catData['data1'][2],
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.grey[700],
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          catData['data2'][2],
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.black,
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
                        ),
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
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: SizedBox(
                            height: 120.h,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 45.w,
                                              height: 42.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    69, 84, 175, 249),
                                              ),
                                              child: Icon(
                                                Icons.cake_rounded,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "BirthDay",
                                                    style: GoogleFonts
                                                        .notoSansTangsa(
                                                            color: Colors
                                                                .grey[700],
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12.sp),
                                                  ),
                                                  Text(
                                                    "3 Nov 2022",
                                                    style: GoogleFonts
                                                        .notoSansTangsa(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14.sp),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "1 y.o",
                                          style: GoogleFonts.notoSansTangsa(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 0.1,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 45.w,
                                              height: 42.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    69, 84, 175, 249),
                                              ),
                                              child: Icon(
                                                Icons.home,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Adoption Day",
                                                    style: GoogleFonts
                                                        .notoSansTangsa(
                                                            color: Colors
                                                                .grey[700],
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12.sp),
                                                  ),
                                                  Text(
                                                    "3 Nov 2022",
                                                    style: GoogleFonts
                                                        .notoSansTangsa(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14.sp),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 0.1,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
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
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww"),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "bellingham",
                                  style: GoogleFonts.notoSansTangsa(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                                Text(
                                  "mw99746@gmail.com",
                                  style: GoogleFonts.notoSansTangsa(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
