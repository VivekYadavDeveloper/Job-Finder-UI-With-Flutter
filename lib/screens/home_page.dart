import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:job_finder/screens/profile_page.dart';

import '../const.dart';
import 'bookmark_page.dart';
import 'job_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //**** Creating Controller For Updating The Navigation Bar ************//
  int _currentIndex = 0;
  static const List<Widget> _screens = [
    HomePage(),
    JobPage(),
    BookmarkPage(),
    ProfilePage()
  ];
  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _updateIndex,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        unselectedItemColor: Colors.grey,
        selectedItemColor: cardColor,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: "Jobs",
            icon: Icon(Icons.view_list_rounded),
          ),
          BottomNavigationBarItem(
            label: "Bookmark",
            icon: Icon(Icons.bookmarks),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: cardColor,
        elevation: 0,
        backgroundColor: barColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  //************* Card Container ****************//
                  child: Container(
                    height: 180.0,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    //******************* Rounded Blur Circle(Stack) ****************//
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 289,
                                top: -10,
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 80, sigmaY: 80),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.transparent.withOpacity(.01),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Stack(
                                children: <Widget>[
                                  Positioned(
                                    right: 289,
                                    bottom: -8,
                                    width: 90,
                                    height: 90,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 80, sigmaY: 80),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent
                                                .withOpacity(.01),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 20.0),
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                    text: "Hello Veronica!\n\n",
                                    children: <TextSpan>[
                                      TextSpan(
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14),
                                          text: "Let's Find Your Dream Job!")
                                    ],
                                  ),
                                ),
                              ),

                              //************* Search Bar ************//
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  PreferredSize(
                                    preferredSize: const Size.fromHeight(2.0),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 55.0, bottom: 10.0),
                                      child: Container(
                                        width: 250,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              hintStyle:
                                                  TextStyle(fontSize: 12.0),
                                              prefixIcon: Icon(
                                                Icons.search_rounded,
                                                color: cardColor,
                                              ),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: cardColor,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    jobCardTile(
                      "Frontend Developer",
                      "Amazon",
                      "assets/FJob.png",
                    ),
                    jobCardTile(
                      "Web Developer",
                      "Flipkart",
                      "assets/FJob.png",
                    ),
                    jobCardTile(
                      "Flutter Developer",
                      "Logix Tech",
                      "assets/FJob.png",
                    ),
                    jobCardTile(
                      "Android Developer",
                      "Google",
                      "assets/FJob.png",
                    ),
                    jobCardTile(
                      "Python Developer",
                      "Traxmart",
                      "assets/FJob.png",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    // color: infoCardColor,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const Text(
                    " Recently Added ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              jobCardTile(
                "PHP Developer",
                "Apple",
                "assets/FJob.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// *** Job Card ********/
Widget jobCardTile(String titletxt, String subtxt, String img) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shadowColor: infoColor,
          elevation: 5.0,
          color: barColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100,
                width: 280,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Image(
                    image: AssetImage(img),
                  ),
                  subtitle: Text(
                    subtxt,
                    style: const TextStyle(color: infoColor),
                  ),
                  title: Text(
                    titletxt,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              ammountCard("Full Time-N100k-Design"),
            ],
          ),
        ),
      ),
    ],
  );
}

//*** Info Card Widget
Widget ammountCard(String ammountTxt) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      alignment: Alignment.center,
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: infoCardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        ammountTxt,
        style: const TextStyle(
          color: cardFontColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
