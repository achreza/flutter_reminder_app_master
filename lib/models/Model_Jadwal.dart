class modelJadwal {
  late String _namauser;

  modelJadwal(this._namauser);

  modelJadwal.map(dynamic obj) {
    this._namauser = obj['namauser'];
  }

  String get namauser => _namauser;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map['namauser'] = _namauser;

    return map;
  }
}
