import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioBookHomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  AudioBookHomeScreen({super.key});

  @override
  State<AudioBookHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AudioBookHomeScreen> {
  List<String> images = [
    "assets/images/Image Placeholder 1.png",
    "assets/images/Image2.png",
    "assets/images/Image Placeholder 1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Image.asset("assets/images/Logo.png"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  color: Color(0Xff4838D1),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: GoogleFonts.poppins(
                              color: Color(0xFF010104),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "See more",
                            style: GoogleFonts.poppins(
                              color: Color(0xFF4838D1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        TabBar(
                          indicatorColor: Colors.transparent,
                          dividerColor: Colors.transparent,
                          tabs: [
                            Tab(text: "Art"),
                            Tab(text: "Business"),
                            Tab(text: "Comedy"),
                            Tab(text: "Drama"),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Recommended For You",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "See more",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF4838D1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 300,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.all(10),
                                child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      width: 10,
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Image.asset(images[index]);
                                  },
                                  itemCount: images.length,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Best Seller",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(
                                "See more",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF4838D1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Container(
                            height: 150, // Adjust the height as needed
                            child: Padding(
                              padding: EdgeInsets.only(left: 25, right: 25),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color(0xFFF5F5FA),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/slider2.png"),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 25, right: 25),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Light Mage",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16),
                                                ),
                                                Text(
                                                  "Laurie Forest",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 3,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    width: 16,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          setState(() {});
        },
        selectedItemColor: Color(0xFF4838D1),
        unselectedItemColor: Color(0xFF6A6A8B),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/Home.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/Search.png")),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/menu_icon.png")),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
