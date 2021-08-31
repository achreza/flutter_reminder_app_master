import 'package:flutter/material.dart';
import 'package:flutter_remindyours_app/models/Model_Jadwal.dart';

class NamaList extends StatefulWidget {
  const NamaList({Key? key, required this.jadwaldata}) : super(key: key);

  final List<modelJadwal> jadwaldata;

  @override
  _NamaListState createState() => _NamaListState();
}

class _NamaListState extends State<NamaList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 2
                    : 3),
        itemCount:
            widget.jadwaldata.length == null ? 0 : widget.jadwaldata.length,
        itemBuilder: (BuildContext context, int i) {
          return Card(
            child: Column(
              children: [Text(widget.jadwaldata[i].namauser)],
            ),
          );
        });
  }
}
