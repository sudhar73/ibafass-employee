import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:ibafass/view/payment/creditcard.dart';

class TransferAmountSuccess extends StatefulWidget {
  const TransferAmountSuccess({Key? key}) : super(key: key);

  @override
  _TransferAmountSuccessState createState() => _TransferAmountSuccessState();
}

class _TransferAmountSuccessState extends State<TransferAmountSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Transfer Receipt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: (BorderRadius.all(
                    Radius.circular(30.0),
                  ))),
              height: 640,
              width: 380,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Image(
                      image: AssetImage('assets/payment/paymenttic.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Transfer Success',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Your money has successfully sent to Manikandan',
                              style: TextStyle(
                                  fontSize: 16, color: HexColor('#717791')),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Total Tranfer',
                      style:
                          TextStyle(fontSize: 16, color: HexColor('#717791')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      '\$90.00',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: DottedLine(
                      dashLength: 5,
                      dashGapLength: 3,
                      lineThickness: 2,
                      dashColor: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recepient',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: HexColor('#F2F2F2'),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      height: 80,
                      width: 350,
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            child: ClipOval(
                              child: Image(
                                image:
                                    AssetImage('assets/payment/profilepic.jpg'),
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          'Manikandan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        subtitle: Text('5867-0935-7647'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 70,
                      width: 350,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Creditcard()));
                        },
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Done",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Transfer more money',
                      style:
                          TextStyle(color: HexColor('#0F46B3'), fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
