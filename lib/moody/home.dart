import 'dart:ui';

import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'exercise_icon.dart';

class MoodyHomeScreen extends StatefulWidget {
  static const String routeName = "MoodyHomeScreen";
  const MoodyHomeScreen({super.key});

  @override
  State<MoodyHomeScreen> createState() => _MoodyHomeScreenState();
}

class _MoodyHomeScreenState extends State<MoodyHomeScreen> {
  int selectedIndex = 0;
  // List<String> walkingTheDog = [
  //   "assets/images/Walking the Dog.png",
  //   "assets/images/Walking the Dog.png",
  //   "assets/images/Walking the Dog.png",
  // ];

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset("assets/images/moody_app_bar_logo.png")),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(end: 0),
              badgeContent: Text(' '),
              child: InkWell(
                onTap: () {},
                child: ImageIcon(
                  AssetImage("assets/images/moody_bell.png"),
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 24, bottom: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    Text(
                      "Sara Rose",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "How are you feeling today ?",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFE4E7EC),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: GestureDetector(
                                  child: Image.asset(
                                      "assets/images/moody_love_icon.png"),
                                ))),
                        Text("love")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFE4E7EC),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: GestureDetector(
                                  child: Image.asset(
                                      "assets/images/moody_cool_icon.png"),
                                ))),
                        Text("cool")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFE4E7EC),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: GestureDetector(
                                  child: Image.asset(
                                      "assets/images/moody_happy_icon.png"),
                                ))),
                        Text("happy")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFE4E7EC),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: GestureDetector(
                                  child: Image.asset(
                                      "assets/images/moody_sad_icon.png"),
                                ))),
                        Text("sad")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feature",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: GoogleFonts.inter(
                              color: Color(0xFF027A48),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF027A48),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  // margin: EdgeInsets.all(20),

                  height: 180,
                  width: 326,
                  // margin: EdgeInsets.all(20),
                  child: ListView.separated(
                    controller: _pageController,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFECFDF3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 24, bottom: 24, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      "Positive vibes",
                                      style: GoogleFonts.inter(
                                          color: Color(0xFF344054),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "Boost your mood with ",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "positive vibes",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.play_circle_fill_outlined,
                                          color: Color(0xFF32D583),
                                        ),
                                        Text("10 mins")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/images/Walking the Dog.png",
                            ),
                            SizedBox(
                              width: 24,
                            )
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SmoothPageIndicator(
                  controller: _pageController, count: 3,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Color(0xFF98A2B3),
                    dotColor: Color(0xFFD9D9D9),
                    dotWidth: 6,
                    dotHeight: 6,
                  ), // your preferred effect
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercise",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: GoogleFonts.inter(
                              color: Color(0xFF027A48),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF027A48),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExerciseIcon(
                          image: "assets/images/moody_relaxation.png",
                          text: "Relaxation",
                          containerColor: Color(0xFFF9F5FF),
                        ),
                        ExerciseIcon(
                          image: "assets/images/moody_meditation.png",
                          text: "Meditation",
                          containerColor: Color(0xFFFDF2FA),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExerciseIcon(
                          image: "assets/images/moody_breathing.png",
                          text: "Beathing",
                          containerColor: Color(0xFFFFFAF5),
                        ),
                        ExerciseIcon(
                          image: "assets/images/moody_yoga.png",
                          text: "Yoga",
                          containerColor: Color(0xFFF0F9FF),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        unselectedItemColor: Color(0xFF667085),
        selectedItemColor: Color(0xFF027A48),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/moody_nav_home_Icon.png"),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/moody_nav_menu_Icon.png"),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/moody_nav_calendar_icon.png"),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/moody_nav_person_icon.png"),
              ),
              label: ""),
        ],
      ),
    );
  }
}
