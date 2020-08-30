part of 'services.dart';

class PpdbHttpServices {
  static Future<bool> postPpdb(Ppdb ppdb, {http.Client client}) async {
    String url = 'http://192.168.1.101:8000/api/ppdb';
    client ??= http.Client();

    var response = await client.post(url, body: {
      'userId': ppdb.siswaId,
      'nama': ppdb.nama,
      'nis': ppdb.nis,
      'nisn': ppdb.nisn,
      'kelamin': ppdb.kelamin,
      'agama': ppdb.agama,
      'alamat': ppdb.alamatSiswa,
      'ttl': ppdb.tempatTanggalLahir,
      'asalSekolah': ppdb.asalSekolah,
      'namaAyah': ppdb.namaAyah,
      'namaIbu': ppdb.namaIbu,
      'pekerjaanIbu': ppdb.pekerjaanIbu,
      'pekerjaanAyah': ppdb.pekerjaanAyah,
      'nomorTlp': ppdb.nomorTlp,
      'noRegister': ppdb.noRegister
    });
    // final result = json.decode(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<Ppdb>> getPpdb({http.Client client}) async {
    String url = "http://192.168.1.101:8000/api/ppdb";
    client ??= http.Client();
    var response = await client.get(url);
    if (response.statusCode != 200) {
      return [];
    }
    var data = json.decode(response.body);
    List result = data['data'];
    return result.map((e) => Ppdb.fromJson(e)).toList();
  }
}
