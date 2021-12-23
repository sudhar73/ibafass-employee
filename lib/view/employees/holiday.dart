import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Holiday extends StatefulWidget {
  const Holiday({Key? key}) : super(key: key);

  @override
  _HolidayState createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: HexColor('#0F46B3'),
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'Holidays',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.15,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Holidays',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: HexColor('#DCF4F9'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: MediaQuery.of(context).size.height / 1.35,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          shadowColor: HexColor('#4CD080'),
                          elevation: 6,
                          child: Container(
                            color: HexColor('#F5FFF8'),
                            height: 90,
                            width: MediaQuery.of(context).size.width / 1.30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: HexColor('#FFF2E4'),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              )),
                          height: 90,
                          width: MediaQuery.of(context).size.width / 1.30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: HexColor('#FFE9FE'),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              )),
                          height: 90,
                          width: MediaQuery.of(context).size.width / 1.30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
