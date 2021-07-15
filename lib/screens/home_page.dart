import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_four.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_one.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_three.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_two.dart';
import 'package:furniture_app/widgets/home_page_widgets/items.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // PersistentTabController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Top Rated",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.equalizer),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Material(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Items(),
                    //row for showing products number and category
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "147 Products",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.black54),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              child: Row(
                                children: [
                                  Text(
                                    "Most Popular",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.expand_more)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //chair images
                    Container(
                      height: 700,
                      child: Column(
                        children: [
                          Row(
                            children: [Chair_one(), Chair_two()],
                          ),
                          Row(
                            children: [Chair_three(), Chair_four()],
                          )
                        ],
                      ),
                    ),
                    // chair image second row
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Colors.black,
                    size: 25,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Icon(
                    Icons.attach_money,
                    color: Colors.white,
                    size: 18,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey,
                    size: 25,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 60,
              width: MediaQuery.of(context).size.width * 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 33),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
