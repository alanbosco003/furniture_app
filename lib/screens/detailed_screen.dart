import 'package:flutter/material.dart';

class Detailed_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 7,
                height: 200,
                color: Colors.grey[900],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .85,
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.photo_camera_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Point your camera at a furniture",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * .68,
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(50)),
                          child: TextButton(
                            onPressed: () {
                              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Elementum Chair: 88.47 %',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 14, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              width: 35,
                              height: 35,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(13, 7, 0, 0),
                                child: Text(
                                  'x',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 300,
                        child: Image.asset(
                          'assets/images/chair3.png',
                          // width: 150,
                          // height: 200,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      width: MediaQuery.of(context).size.width * .80,
                      height: MediaQuery.of(context).size.width * .20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/chair3.png',
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Elementum Chair"),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Text(
                                                  "4.8",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Text(
                                                  "284.00",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                width: 35,
                                height: 35,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 2, 0, 0),
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
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
