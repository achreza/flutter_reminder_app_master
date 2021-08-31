import 'package:flutter/material.dart';
import 'package:flutter_remindyours_app/db/DBHelper.dart';
import 'package:flutter_remindyours_app/models/Model_Jadwal.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderNama extends StatefulWidget {
  BuilderNama({Key? key}) : super(key: key);
  late final List<modelJadwal> jadwaldata;

  @override
  _BuilderNamaState createState() => _BuilderNamaState();
}

class _BuilderNamaState extends State<BuilderNama> {
  var db = new DBHelper();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: db.getNote(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        var data = snapshot.data;
        child:
        Text(
          widget.jadwaldata[0].namauser,
          style: GoogleFonts.getFont('Montserrat',
              textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
        );
        return Text('No Data');
      },
    );
  }
}
