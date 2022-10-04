import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/routes/routes.dart';

class StartUpContainer extends StatefulWidget {
  const StartUpContainer({Key? key}) : super(key: key);
  @override
  State<StartUpContainer> createState() => _StartUpContainerState();
}

class _StartUpContainerState extends State<StartUpContainer> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   index = 0;
        // });
        Navigator.pushNamed(context, routes.home);
      },
      child: Container(
        height: 110,
        width: 120,
        decoration: BoxDecoration(
            color: index == 1 ? Colors.red : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: AssetImage("img/me.jpeg"), fit: BoxFit.cover),),
      ),
    );
  }
}
