import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/routes/routes.dart';

import 'ListsData/assestlist.dart';
import 'custom/AppText.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + AssestList.bg[3]),
                    fit: BoxFit.cover)),
            child: Container(
              color: Colors.black.withOpacity(0.4), //======= Color Blur Layer
              child: Container(
                // Onto the Image items
                // margin: EdgeInsets.only(left: 15, right: 15, top: 60),
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
                        Icon(
                          Icons.search,
                          size: 30,
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
                            width: MediaQuery.of(context).size.width / 12,
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
                              onPressed: () {},
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
                        InkWell(
                          onTap: () {},
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
                              onPressed: () {},
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
                            Navigator.pushNamed(context, routes.home);
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
