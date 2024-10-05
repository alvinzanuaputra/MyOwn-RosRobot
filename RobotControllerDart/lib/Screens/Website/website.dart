import 'package:flutter/material.dart';
import 'package:robot_controller2/Screens/Website/webscreen/left.dart';
import 'package:robot_controller2/Screens/Website/webscreen/middle.dart';
import 'package:robot_controller2/Screens/Website/webscreen/right.dart';
import 'package:robot_controller2/Screens/Website/webscreen/topnavbar.dart';
import 'package:firebase_database/firebase_database.dart';

class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff222831),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const NavBar(),
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LeftSide(),
                      MiddleSide(),
                      RightSide(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
