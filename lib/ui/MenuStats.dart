import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MenuStats extends StatefulWidget {
  @override
  _MenuStatsState createState() => _MenuStatsState();
}

class _MenuStatsState extends State<MenuStats> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#FAFCFE'),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 52, 20, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('My Stats',
                  style: GoogleFonts.getFont('Montserrat',
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                            offset: Offset(0, 3),
                          ),
                        ]),
                    width: 158,
                    height: 158,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          '31',
                          style: GoogleFonts.getFont('Montserrat',
                              textStyle: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#20B926'))),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Tasks',
                          style: GoogleFonts.getFont('Montserrat',
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#222222'))),
                        ),
                        Text(
                          'Complete',
                          style: GoogleFonts.getFont('Montserrat',
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#222222'))),
                        )
                      ],
                    ),
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
                            offset: Offset(0, 3),
                          ),
                        ]),
                    width: 158,
                    height: 158,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          '9',
                          style: GoogleFonts.getFont('Montserrat',
                              textStyle: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#FF2E2E'))),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Pending',
                          style: GoogleFonts.getFont('Montserrat',
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#222222'))),
                        ),
                        Text(
                          'Tasks',
                          style: GoogleFonts.getFont('Montserrat',
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#222222'))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 28),
                padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]),
                width: 335,
                height: 429,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Insight',
                      style: GoogleFonts.getFont('Montserrat',
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: HexColor('#222222'))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
