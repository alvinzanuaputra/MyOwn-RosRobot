import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:robot_controller2/Screens/Website/webscreen/left.dart';

class MiddleSide extends StatefulWidget {
  const MiddleSide({Key? key}) : super(key: key);

  @override
  State<MiddleSide> createState() => _MiddleSideState();
}

class _MiddleSideState extends State<MiddleSide> {
  // main
  int forward = 0;
  int backward = 0;
  int left = 0;
  int right = 0;

  // submain
  int upLeft = 0;
  int upRight = 0;
  int downLeft = 0;
  int downRight = 0;

  // add-on
  int forwardButton = 0;
  int backwardButton = 0;
  int leftButton = 0;
  int rightButton = 0;
  int upLeftButton = 0;
  int upRightButton = 0;
  int downLeftButton = 0;
  int downRightbutton = 0;

  bool powerButton = false;

  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference refF = FirebaseDatabase.instance.ref("button/Forward/");
  DatabaseReference refB = FirebaseDatabase.instance.ref("button/Backward/");
  DatabaseReference refL = FirebaseDatabase.instance.ref("button/Left/");
  DatabaseReference refR = FirebaseDatabase.instance.ref("button/Right/");
  DatabaseReference refUL = FirebaseDatabase.instance.ref("button/Upper Left/");
  DatabaseReference refUR =
      FirebaseDatabase.instance.ref("button/Upper Right/");
  DatabaseReference refDL = FirebaseDatabase.instance.ref("button/Down Left/");
  DatabaseReference refDR = FirebaseDatabase.instance.ref("button/Down Right/");

  void defaultSettings() {
    forward = 70;
    backward = 70;
    left = 70;
    right = 70;
    upLeft = 70;
    upRight = 70;
    downLeft = 70;
    downRight = 70;

    ////////////////

    forwardButton = 0;
    backwardButton = 0;
    leftButton = 0;
    rightButton = 0;
    upLeftButton = 0;
    upRightButton = 0;
    downLeftButton = 0;
    downRightbutton = 0;

    ////////////////

    refF.set({'Forward': forward});
    refB.set({'Backward': backward});
    refL.set({'Left': left});
    refR.set({'Right': right});
    refUL.set({'Upper Left': upLeft});
    refUR.set({'Upper Right': upRight});
    refDL.set({'Down Left': downLeft});
    refDR.set({'Down Right': downRight});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 62,
          width: 700,
          decoration: const BoxDecoration(
              color: Color(0xff00ADB5),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          child: const Center(
            child: Text(
              "Controller",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              powerButton = !powerButton;
            });
            if (powerButton == false) {
              defaultSettings();
            }
          },
          child: Container(
            width: 85,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: powerButton ? Colors.green : Colors.red,
            ),
            child: Center(
                child: Text(
              powerButton ? 'ON' : 'OFF',
              style: TextStyle(
                  color: powerButton ? Colors.white : Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(0.0),
              width: 186,
              child: IconButton(
                iconSize: 186,
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: Image.asset('assets/images/serong_kiri_atas.png'),
                onPressed: () {
                  print('sending massage to database!');
                  setState(() {
                    // upLeftButton++;
                    // if (upLeftButton == 2) {
                    //   upLeftButton = 0;
                    //   upLeft = 70;
                    // } else {
                    //   upLeft = 84;
                    // }
                    // refUL.set({'Upper Left': upLeft});

                    forwardButton++;
                    if (forwardButton == 2) {
                      forwardButton = 0;
                      forward = 70;
                    } else {
                      forward = 76;
                    }
                    refF.set({'Forward': forward});
                  });
                },
              ),
            ),
            SizedBox(width: 36.84),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Image.asset('assets/images/Forward_button.png'),
              iconSize: 186,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 65;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
            SizedBox(width: 36.46),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/Serong_kanan_atas.png'),
              iconSize: 186.3,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  // upRightButton++;
                  // if (upRightButton == 2) {
                  //   upRightButton = 0;
                  //   upRight = 70;
                  // } else {
                  //   upRight = 84;
                  // }
                  // refUR.set({'Upper Right': upRight});

                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 73;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Image.asset('assets/images/Left_button.png'),
              iconSize: 186.3,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  // leftButton++;
                  // if (leftButton == 2) {
                  //   leftButton = 0;
                  //   left = 70;
                  // } else {
                  //   left = 68;
                  // }
                  // refL.set({'Left': left});

                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 68;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
            const SizedBox(width: 15.7),
            Container(
              height: 145,
              width: 266,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
            ),
            const SizedBox(width: 15),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Image.asset('assets/images/Right_button.png'),
              iconSize: 186.3,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  // rightButton++;
                  // if (rightButton == 2) {
                  //   rightButton = 0;
                  //   right = 70;
                  // } else {
                  //   right = 66;
                  // }
                  // refR.set({'Right': right});

                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 66;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Image.asset('assets/images/serong_kiri_bawah.png'),
              iconSize: 186.3,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  // downLeftButton++;
                  // if (downLeftButton == 2) {
                  //   downLeftButton = 0;
                  //   downLeft = 70;
                  // } else {
                  //   downLeft = 84;
                  // }
                  // refDL.set({'Down Left': downLeft});

                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 75;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
            const SizedBox(width: 36.84),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Image.asset('assets/images/Backward_button.png'),
              iconSize: 186.3,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  // backwardButton++;
                  // if (backwardButton == 2) {
                  //   backwardButton = 0;
                  //   backward = 70;
                  // } else {
                  //   backward = 67;
                  // }
                  // refB.set({'Backward': backward});

                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 67;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
            const SizedBox(width: 36.46),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Image.asset('assets/images/serong_kanan_bawah.png'),
              iconSize: 186.3,
              onPressed: () {
                print('sending massage to database!');
                setState(() {
                  // downRightbutton++;
                  // if (downRightbutton == 2) {
                  //   downRightbutton = 0;
                  //   downRight = 70;
                  // } else {
                  //   downRight = 84;
                  // }
                  // refDR.set({'Down Right': downRight});

                  forwardButton++;
                  if (forwardButton == 2) {
                    forwardButton = 0;
                    forward = 70;
                  } else {
                    forward = 2;
                  }
                  refF.set({'Forward': forward});
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/V_up.png'),
              iconSize: 100,
              onPressed: () {},
            ),
            SizedBox(width: 59.87),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/W_up.png'),
              iconSize: 100,
              onPressed: () {},
            ),
            SizedBox(width: 59.87),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/H_up.png'),
              iconSize: 100,
              onPressed: () {},
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/V_down.png'),
              iconSize: 100,
              onPressed: () {},
            ),
            SizedBox(width: 59.87),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/W_down.png'),
              iconSize: 100,
              onPressed: () {},
            ),
            SizedBox(width: 59.87),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Image.asset('assets/images/H_down.png'),
              iconSize: 100,
              onPressed: () {},
            ),
          ],
        ),
        Row(
          children: [
            Container(
                color: Colors.black,
                height: 35,
                width: 99,
                child: Center(
                  child: Text(
                    'V: +5.2',
                    style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontSize: 25),
                  ),
                )),
            SizedBox(width: 60),
            Container(
                color: Colors.black,
                height: 35,
                width: 99,
                child: Center(
                  child: Text(
                    'W: 2.0',
                    style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontSize: 25),
                  ),
                )),
            SizedBox(width: 60),
            Container(
                color: Colors.black,
                height: 35,
                width: 99,
                child: Center(
                  child: Text(
                    'H: -1.2',
                    style: TextStyle(
                        color: Color(0xff00FF0A),
                        fontFamily: 'ds_digital',
                        fontSize: 25),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
