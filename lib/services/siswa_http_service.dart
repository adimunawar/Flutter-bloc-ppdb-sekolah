part of 'services.dart';

class SiswaHttpServices {
  static Future<bool> postSiswa(Siswa siswa, {http.Client client}) async {
    String url = 'http://192.168.1.101:8000/api/siswa';
    client ??= http.Client();

    var response = await client.post(url, body: {
      'userId': siswa.siswaId,
      'nama': siswa.nama,
      'nis': siswa.nis,
      'nisn': siswa.nisn,
      'kelamin': siswa.kelamin,
      'agama': siswa.agama,
      'alamat': siswa.alamatSiswa,
      'ttl': siswa.tempatTanggalLahir,
      'asalSekolah': siswa.asalSekolah,
      'namaAyah': siswa.namaAyah,
      'namaIbu': siswa.namaIbu,
      'pekerjaanIbu': siswa.pekerjaanIbu,
      'pekerjaanAyah': siswa.pekerjaanAyah,
      'nomorTlp': siswa.nomorTlp,
      'status': siswa.status
    });
    // final result = json.decode(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<Siswa>> getSiswa({http.Client client}) async {
    String url = "http://192.168.1.101:8000/api/siswa";
    client ??= http.Client();
    var response = await client.get(url);
    if (response.statusCode != 200) {
      return [];
    }
    var data = json.decode(response.body);
    List result = data['data'];
    return result.map((e) => Siswa.fromJson(e)).toList();
  }
}
