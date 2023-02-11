import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicle_one/cus_color.dart';
import 'package:practicle_one/slider.dart';
import 'package:practicle_one/slider_1.dart';
import 'package:practicle_one/slider_2.dart';
import 'package:practicle_one/slider_3.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  Widget creatList() {
    return Container(child: ListView());
  }

  final myFPImg = [
    "assets/L-1.jpg",
    "assets/L-2.jpg",
    "assets/L-1.jpg",
  ];

  final myFPTitle = [
    "Krispy Creme",
    "Mario Italiano",
    "Krispy Creme",
  ];

  final myFPDesc = [
    "St Georgece Terrace, Perth",
    "Hay street , Perth City",
    "St Georgece Terrace, Perth",
  ];

  final myBPImg = [
    "assets/p-1.jpg",
    "assets/p-2.jpg",
    "assets/p-1.jpg",
  ];

  final myBPTitle = [
    "McDonald’s",
    "The Halal Guys",
    "McDonald’s",
  ];

  final myBPDesc = [
    "Hay street , Perth City",
    "Hay street , Perth City",
    "Hay street , Perth City",
  ];

  final myARTitle = [
    'McDonald\'s',
    "Cafe Brichor’s",
    "McDonald's",
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        actions: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 20),
              child: Text(
                "Filter",
                style: GoogleFonts.gothicA1(color: CColor.black),
              ),
            ),
          )
        ],
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "DELIVERY TO",
              style: GoogleFonts.gothicA1(fontSize: 12, color: CColor.delicolo),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HayStreet\, Perth",
                  style: GoogleFonts.gothicA1(
                      fontSize: 20,
                      color: CColor.black,
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.75),
                  child: SvgPicture.asset(
                    'assets/back.svg',
                    height: 8.5,
                    width: 6,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: ScrollConfiguration(
        behavior: MyBehaviour(),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Slides(),
                SizedBox(
                  height: 20,
                ),
                cusTitle("Featured\nPartners"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListOne(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/banner.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                cusTitle("Best Picks\nRestaurants by\nteam"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.34,
                  child: ListTwo(),
                ),
                SizedBox(
                  height: 20,
                ),
                cusTitle("All Restaurants"),
                cusCard1(0),
                cusCard2(1),
                cusCard3(2),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: cusBNB(),
    );
  }

  Widget ListOne() {
    return ListView.builder(
        itemCount: myFPImg.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: Card(
              elevation: 0.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: new AssetImage(myFPImg[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myFPTitle[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.gothicA1(
                            fontWeight: FontWeight.w300, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        myFPDesc[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.gothicA1(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CColor.elebut,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          minimumSize: Size(36, 20),
                        ),
                        onPressed: () {},
                        child: Text(
                          '4.5',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.gothicA1(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 11),
                        child: Text(
                          "25min",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                      ),
                      Image.asset('assets/Oval.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          " Free delivery",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget ListTwo() {
    return ListView.builder(
        itemCount: myBPImg.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: Card(
              elevation: 0.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: new AssetImage(myBPImg[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myBPTitle[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.gothicA1(
                            fontWeight: FontWeight.w300, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        myBPDesc[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.gothicA1(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CColor.elebut,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          minimumSize: Size(36, 20),
                        ),
                        onPressed: () {},
                        child: Text(
                          '4.5',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.gothicA1(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 11),
                        child: Text(
                          "25min",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                      ),
                      Image.asset('assets/Oval.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          " Free delivery",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget cusTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.gothicA1(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "See all",
          style: GoogleFonts.gothicA1(color: CColor.seetext),
        ),
      ],
    );
  }

  Widget cusCard1(int tit) {
    return Card(
      elevation: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Slides1(),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myARTitle[tit],
                style: GoogleFonts.gothicA1(
                    fontWeight: FontWeight.w300, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cusText("\$\$"),
                Image.asset('assets/Oval.png'),
                cusText("Chinese"),
                Image.asset('assets/Oval.png'),
                cusText("American"),
                Image.asset('assets/Oval.png'),
                cusText("Deshi food"),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cusText1('4.3'),
                Image.asset('assets/Star.png'),
                cusText1('200+ Ratings'),
                SvgPicture.asset('assets/timer.svg', color: CColor.clock),
                cusText1("25min"),
                Image.asset('assets/Oval.png'),
                SvgPicture.asset('assets/Dollar.svg', color: CColor.dollor),
                cusText1('Free'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cusCard2(int tit) {
    return Card(
      elevation: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Slides2(),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myARTitle[tit],
                style: GoogleFonts.gothicA1(
                    fontWeight: FontWeight.w300, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cusText("\$\$"),
                Image.asset('assets/Oval.png'),
                cusText("Chinese"),
                Image.asset('assets/Oval.png'),
                cusText("American"),
                Image.asset('assets/Oval.png'),
                cusText("Deshi food"),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cusText1('4.3'),
                Image.asset('assets/Star.png'),
                cusText1('200+ Ratings'),
                SvgPicture.asset('assets/timer.svg', color: CColor.clock),
                cusText1("25min"),
                Image.asset('assets/Oval.png'),
                SvgPicture.asset('assets/Dollar.svg', color: CColor.dollor),
                cusText1('Free'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cusCard3(int tit) {
    return Card(
      elevation: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Slides3(),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myARTitle[tit],
                style: GoogleFonts.gothicA1(
                    fontWeight: FontWeight.w300, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cusText("\$\$"),
                Image.asset('assets/Oval.png'),
                cusText("Chinese"),
                Image.asset('assets/Oval.png'),
                cusText("American"),
                Image.asset('assets/Oval.png'),
                cusText("Deshi food"),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cusText1('4.3'),
                Image.asset('assets/Star.png'),
                cusText1('200+ Ratings'),
                SvgPicture.asset('assets/timer.svg', color: CColor.clock),
                cusText1("25min"),
                Image.asset('assets/Oval.png'),
                SvgPicture.asset('assets/Dollar.svg', color: CColor.dollor),
                cusText1('Free'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cusText(String text) {
    return Text(
      text,
      style: GoogleFonts.gothicA1(
        color: CColor.bodyText,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget cusText1(String text) {
    return Text(
      text,
      style: GoogleFonts.gothicA1(
        color: CColor.black,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget cusBNB() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: CColor.delicolo,
      unselectedItemColor: CColor.unsele,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: SvgPicture.asset(
            'assets/food.svg',
            color: _selectedIndex == 0 ? CColor.delicolo : CColor.unsele,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: SvgPicture.asset(
            'assets/search.svg',
            color: _selectedIndex == 1 ? CColor.delicolo : CColor.unsele,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Order',
          icon: SvgPicture.asset(
            'assets/order-list.svg',
            color: _selectedIndex == 2 ? CColor.delicolo : CColor.unsele,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: SvgPicture.asset(
            'assets/profile.svg',
            color: _selectedIndex == 3 ? CColor.delicolo : CColor.unsele,
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buidViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
