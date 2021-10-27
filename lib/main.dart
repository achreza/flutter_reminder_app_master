import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remindyours_app/buildernama.dart';
import 'package:flutter_remindyours_app/calendar.dart';
import 'package:flutter_remindyours_app/db/DBHelper.dart';
import 'package:flutter_remindyours_app/listnama.dart';
import 'package:flutter_remindyours_app/models/Model_Jadwal.dart';
import 'package:flutter_remindyours_app/ui/MenuKalender.dart';
import 'package:flutter_remindyours_app/ui/MenuStats.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MainMenu());
}

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  String nama = 'Reza';
  var db = new DBHelper();

  Future addRecord() async {
    var db = DBHelper();
    var inputan = modelJadwal('Fahreza');
    await db.saveNote(inputan);
    print('saved');
  }

  Future<List<String>?> getNama() async {
    var db = DBHelper();
    List nama = await db.getNote();
    String namauser = nama[0]['namauser'];
    print(nama);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.easeIn,
          color: HexColor('#FFFFFF'),
          backgroundColor: HexColor('#FAFCFE'),
          buttonBackgroundColor: HexColor('#1294F2'),
          items: <Widget>[
            Icon(Icons.mail, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
            Icon(Icons.list, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        backgroundColor: HexColor('#FAFCFE'),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 52, 20, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView(
                children: [
                  // BuilderNama(),
                  Text(
                    'Good Morning, ' + nama,
                    style: GoogleFonts.getFont('Montserrat',
                        textStyle: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'You Have',
                    style: GoogleFonts.getFont('Montserrat',
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: HexColor('#AAAAAA'))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        width: 158,
                        height: 142,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 34, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '10',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w500,
                                        color: HexColor('45D2FF'))),
                              ),
                              Text(
                                'Meeting Schedule',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#222222'),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        width: 158,
                        height: 142,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 34, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '5',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w500,
                                        color: HexColor('#FF5151'))),
                              ),
                              Text(
                                'College Assignment',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#222222'),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        width: 158,
                        height: 142,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 34, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w500,
                                        color: HexColor('#FFBD5A'))),
                              ),
                              Text(
                                'Daily Task',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#222222'),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        width: 158,
                        height: 142,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 34, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '11',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w500,
                                        color: HexColor('#B75AFF'))),
                              ),
                              Text(
                                'Course Schedule',
                                style: GoogleFonts.getFont('Montserrat',
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#222222'),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Today',
                    style: GoogleFonts.getFont('Montserrat',
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: HexColor('#AAAAAA'))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.only(left: 17),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Digital Electronic Course',
                                  style: GoogleFonts.getFont('Montserrat',
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor('#222222'))),
                                ),
                                Text(
                                  '08:00 AM',
                                  style: GoogleFonts.getFont('Montserrat',
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor('#AAAAAA'))),
                                ),
                              ],
                            ),
                            Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: HexColor('#20B926'),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Icon(
                                  Icons.done,
                                  size: 10,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                    width: 350,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: HexColor('#B75AFF')),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(left: 17),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Company Work Meeting',
                                  style: GoogleFonts.getFont('Montserrat',
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor('#222222'))),
                                ),
                                Text(
                                  '01:00 PM',
                                  style: GoogleFonts.getFont('Montserrat',
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor('#AAAAAA'))),
                                ),
                              ],
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: HexColor('#8899A64D'),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              // child: Icon(
                              //   Icons.done,
                              //   size: 10,
                              //   color: Colors.white,
                              // )
                            )
                          ],
                        ),
                      ),
                    ),
                    width: 350,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: HexColor('#45D2FF')),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(left: 17),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Object Oriented Program Final Project',
                                  style: GoogleFonts.getFont('Montserrat',
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor('#222222'))),
                                ),
                                Text(
                                  '08:00 AM',
                                  style: GoogleFonts.getFont('Montserrat',
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor('#AAAAAA'))),
                                ),
                              ],
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: HexColor('#8899A64D'),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              // child: Icon(
                              //   Icons.done,
                              //   size: 10,
                              //   color: Colors.white,
                              // )
                            )
                          ],
                        ),
                      ),
                    ),
                    width: 350,
                    height: 58,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: HexColor('#FF5151')),
                  ),
                  ElevatedButton(onPressed: addRecord, child: Text('jajal')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalendarApp()),
                        );
                      },
                      child: Text('pindah'))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
