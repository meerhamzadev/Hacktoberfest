import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/ListsData/assestlist.dart';
import 'package:netflix_clone/routes/routes.dart';

import '../custom/AppText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double mediawidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: mediawidth,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/bbg.jpeg"), fit: BoxFit.cover)),
            child: Container(
              color: Colors.black.withOpacity(0.4), //======= Color Blur Layer
              child: Container(
                // Onto the Image items
                margin: EdgeInsets.only(left: 15, right: 15, top: 60),
                child: Column(
                  children: [
                    Row(
                      // Top Layer of items
                      children: [
                        Container(
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("img/small.png"),
                                fit: BoxFit.cover),
                          ),
                        ), //================ Netflix logo
                        Expanded(child: Container()),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Search is not enabled'),
                              // action: SnackBarAction(
                              //   label: 'Undo',
                              //   onPressed: () {
                              //     // Some code to undo the change.
                              //   },
                              // ),
                            ));
                          },
                          icon: Icon(
                            Icons.search,
                            size: mediawidth * 0.07,
                          ),
                        ), //============== Search
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "img/me.jpeg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5)),
                        ), //============Avatar
                      ],
                    ), // ================= Row 1st
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Row(
                        children: [
                          AppText(
                            "TV Shows",
                          ),
                          SizedBox(
                            width: mediawidth / 12,
                          ),
                          AppText(
                            "Movies",
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                          ),
                          AppText(
                            "Categories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        AppText(
                          "Quickly   ",
                          size: 10,
                        ),
                        AppText(
                          "🔵",
                          size: 4,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          "Hearfelt   ",
                          size: 10,
                        ),
                        AppText(
                          "🔵",
                          size: 4,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          "Teen   ",
                          size: 10,
                        ),
                        AppText(
                          "🔵",
                          size: 4,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          "Ensemble   ",
                          size: 10,
                        ),
                        AppText(
                          "🔵",
                          size: 4,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          "Underdog   ",
                          size: 10,
                        ),
                        AppText(
                          "🔵",
                          size: 4,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          "TV   ",
                          size: 10,
                        ),
                        Expanded(child: Container()),
                      ],
                    ), //================== Tags
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('Add is not enabled'),
                                ));
                              },
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            AppText(
                              "My List",
                              size: 10,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Preview is not enabled'),
                            ));
                          },
                          child: Container(
                            height: 40,
                            width: 90,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.play_arrow_solid,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                AppText(
                                  "Play",
                                  size: 18,
                                  color: Colors.black,
                                  weight: FontWeight.bold,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('Info is not enabled'),
                                ));
                              },
                              icon: Icon(
                                Icons.info_outline,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            AppText(
                              "Info",
                              size: 10,
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // All the top portion
          Positioned(
            top: 510,
            child: Wrap(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: AppText(
                            AssestList.names[index],
                            weight: FontWeight.bold,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 190,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   selectedIndex = index + 1;
                            // });
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Pressed !!'),
                            ));
                            Navigator.pushNamed(context, routes.homedetail);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 180,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              // color: selectedIndex == index
                              //     ? Colors.white
                              //     : Colors.red,
                              image: DecorationImage(
                                  image:
                                      AssetImage("img/" + AssestList.bg[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
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
    );
  }
}
