import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_four.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_one.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_three.dart';
import 'package:furniture_app/widgets/home_page_widgets/chair_two.dart';
import 'package:furniture_app/widgets/home_page_widgets/items.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Home_Page extends StatelessWidget {
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
      body: SingleChildScrollView(
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
                Column(
                  children: [
                    Row(
                      children: [Chair_one(), Chair_two()],
                    ),
                    Row(
                      children: [Chair_three(), Chair_four()],
                    )
                  ],
                ),
                // chair image second row
              ]),
        ),
      ),
    );
  }
}
