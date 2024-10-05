import 'package:flutter/material.dart';

class RightSide extends StatefulWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  State<RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<RightSide> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 62,
          width: 349,
          decoration: const BoxDecoration(
              color: Color(0xff00ADB5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: const Center(
            child: Text(
              "Sensors",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 18, top: 19),
          child: Container(
              height: 184,
              width: 314,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Text(
                    'SRF04',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ds_digital',
                      fontWeight: FontWeight.normal,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SRF-0:35',
                        style: TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'SRF-1:35',
                        style: TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SRF-2:35',
                        style: TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'SRF-3:35',
                        style: TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SRF-4:35',
                        style: TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.only(right: 18, top: 19),
          child: Container(
            height: 184,
            width: 314,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
                child: Column(
              children: [
                SizedBox(height: 12),
                Text(
                  'SHARP-GP',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'ds_digital',
                    fontWeight: FontWeight.normal,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GP-0:350',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'GP-1:350',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GP-2:350',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'GP-3:350',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 18, top: 19),
          child: Container(
            height: 184,
            width: 314,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
                child: Column(
              children: [
                SizedBox(height: 12),
                Text(
                  'PIXYCAM',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'ds_digital',
                    fontWeight: FontWeight.normal,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VELOCITY :35',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'WIDTH       :25',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'HEIGHT     :-1',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 18, top: 19),
          child: Container(
            height: 184,
            width: 314,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
                child: Column(
              children: [
                SizedBox(height: 12),
                Text(
                  'CMPS-14',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'ds_digital',
                    fontWeight: FontWeight.normal,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YAW      :295',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'PITCH   :3',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'ROLL    :-1',
                      style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        ),
      ],
    );
  }
}
