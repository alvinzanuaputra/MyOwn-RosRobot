import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class LeftSide extends StatefulWidget {
  @override
  State<LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends State<LeftSide> {
  // SRF
  String srf00 = '0';
  String srf01 = '0';
  String srf02 = '0';
  String srf03 = '0';
  String srf04 = '0';

  // SHARP-GP
  String gp00 = '0';
  String gp01 = '0';
  String gp02 = '0';
  String gp03 = '0';

  //PIXY CAM
  String width = '0';
  String height = '0';

  //CMPS-14
  String yaw = '0';
  String pitch = '0';
  String roll = '0';

  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref("sensors/");

  final refGet = FirebaseDatabase.instance.ref();

  //getting data from firebase
  void initState() {
    super.initState();
    activelisteners();
  }

  void activelisteners() {
    refGet.child('Sensors/srf00').onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        srf00 = '$description';
      });
    });
    refGet.child('button1/srf01').onValue.listen((event) {
      final description = event.snapshot.value;
      setState(() {
        srf01 = '$description';
      });
    });
  }

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
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
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
          padding: const EdgeInsets.only(left: 35, top: 19),
          child: Container(
              height: 184,
              width: 314,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const Text(
                    'SRF04',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ds_digital',
                      fontWeight: FontWeight.normal,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SRF-0: $srf00',
                        style: const TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text(
                        'SRF-1: $srf01',
                        style: const TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SRF-2: $srf02',
                        style: const TextStyle(
                          color: Color(0xff00FF0A),
                          fontFamily: 'ds_digital',
                          fontWeight: FontWeight.normal,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
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
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
          padding: EdgeInsets.only(left: 35, top: 19),
          child: Container(
            height: 184,
            width: 314,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
                child: Column(
              children: [
                const SizedBox(height: 12),
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
          padding: EdgeInsets.only(left: 35, top: 19),
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
          padding: EdgeInsets.only(left: 35, top: 19),
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
