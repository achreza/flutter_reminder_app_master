import 'package:flutter/material.dart';
import 'package:flutter_remindyours_app/calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MenuKalender extends StatefulWidget {
  const MenuKalender({Key? key}) : super(key: key);

  @override
  _MenuKalenderState createState() => _MenuKalenderState();
}

class _MenuKalenderState extends State<MenuKalender> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: HexColor('#FAFCFE'),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 52, 20, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Calendar',
                style: GoogleFonts.getFont('Montserrat',
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              ),
              Container(
                margin: EdgeInsets.only(top: 28),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                width: 350,
                height: 330,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(28, 15, 28, 21),
                    child: CalendarApp()),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
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
            ],
          )),
    ));
  }
}
