import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBartState();
}

class _NavBartState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ABINARA-1 360
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00ADB5),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          height: 69,
          child: Center(
            child: Text(
              "ABINARA-1 360°",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
