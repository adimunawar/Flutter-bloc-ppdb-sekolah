part of 'services.dart';

class SiswaServices {
  static CollectionReference _siswaCollection =
      Firestore.instance.collection('siswa');

  static Future<void> updateSiswa(Siswa siswa) async {
    await _siswaCollection.document().setData({
      'siswaId': siswa.siswaId,
      'nama': siswa.nama,
      'nis': siswa.nis,
      'nisn': siswa.nisn,
      'kelamin': siswa.kelamin,
      'agama': siswa.agama,
      'alamatSiswa': siswa.alamatSiswa,
      'tempatTanggalLahir': siswa.tempatTanggalLahir,
      'asalSekolah': siswa.asalSekolah,
      'namaAyah': siswa.namaAyah,
      'namaIbu': siswa.namaIbu,
      'pekerJaanIbu': siswa.pekerjaanIbu,
      'pekerjaanAyah': siswa.pekerjaanAyah,
      'nomorTlp': siswa.nomorTlp,
      'status': siswa.status,
      'kelas': siswa.kelas,
    });
  }

  static Future<List<Siswa>> getAllSiswa() async {
    QuerySnapshot snapshot = await _siswaCollection.getDocuments();
    var documents = snapshot.documents;
    List<Siswa> listSiswa = [];
    for (var document in documents) {
      listSiswa.add(Siswa(
        document.data['siswaId'],
        document.data['nama'],
        document.data['agama'],
        document.data['alamatSiswa'],
        document.data['kelamin'],
        document.data['nis'],
        document.data['nisn'],
        document.data['asalSekolah'],
        document.data['namaAyah'],
        document.data['namaIbu'],
        document.data['pekerjaanAyah'],
        document.data['pekerjaanIbu'],
        document.data['nomorTlp'],
        document.data['kelas'],
        document.data['status'],
        document.data['tempatTanggalLahir'],
      ));
    }
    return listSiswa;
  }
}
