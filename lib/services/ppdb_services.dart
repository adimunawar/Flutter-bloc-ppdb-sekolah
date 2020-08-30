part of 'services.dart';

class PpdbServices {
  static CollectionReference _ppdbCollection =
      Firestore.instance.collection('ppdb');

  static Future<void> updatePpdb(Ppdb ppdb) async {
    await _ppdbCollection.document(ppdb.siswaId).setData({
      'userId': ppdb.siswaId,
      'nama': ppdb.nama,
      'nis': ppdb.nis,
      'nisn': ppdb.nisn,
      'kelamin': ppdb.kelamin,
      'agama': ppdb.agama,
      'alamatSiswa': ppdb.alamatSiswa,
      'tempatTanggalLahir': ppdb.tempatTanggalLahir,
      'asalSekolah': ppdb.asalSekolah,
      'namaAyah': ppdb.namaAyah,
      'namaIbu': ppdb.namaIbu,
      'pekerJaanIbu': ppdb.pekerjaanIbu,
      'pekerjaanAyah': ppdb.pekerjaanAyah,
      'nomorTlp': ppdb.nomorTlp,
      'noRegister': ppdb.noRegister
    });
  }

  static Future<List<Ppdb>> getAllPpdb() async {
    QuerySnapshot snapshot = await _ppdbCollection.getDocuments();
    var documents = snapshot.documents;
    List<Ppdb> ppdbs = [];
    for (var document in documents) {
      ppdbs.add(Ppdb(
        siswaId: document.data['userId'],
        nama: document.data['nama'],
        agama: document.data['agama'],
        alamatSiswa: document.data['alamatSiswa'],
        kelamin: document.data['kelamin'],
        nis: document.data['nis'],
        nisn: document.data['nisn'],
        asalSekolah: document.data['asalSekolah'],
        namaAyah: document.data['namaAyah'],
        namaIbu: document.data['namaIbu'],
        pekerjaanAyah: document.data['pekerjaanAyah'],
        pekerjaanIbu: document.data['pekerjaanIbu'],
        nomorTlp: document.data['nomorTlp'],
        noRegister: document.data['noRegister'],
        tempatTanggalLahir: document.data['tempatTanggalLahir'],
      ));
    }
    return ppdbs;
  }

  static Future<void> deletePpdb(String id) async {
    await _ppdbCollection.document(id).delete();
  }

  static Future<Ppdb> getDetailPpdb(String id) async {
    DocumentSnapshot snapshot = await _ppdbCollection.document(id).get();

    return Ppdb(
      siswaId: snapshot["siswaId"],
      nama: snapshot.data["nama"] ?? "",
      agama: snapshot.data['agama'] ?? "",
      alamatSiswa: snapshot.data['alamatSiswa'] ?? "",
      kelamin: snapshot.data['kelamin'] ?? "",
      nis: snapshot.data['nis'] ?? "",
      nisn: snapshot.data['nisn'] ?? "",
      asalSekolah: snapshot.data['asalSekolah'] ?? "",
      namaAyah: snapshot.data['namaAyah'] ?? "",
      namaIbu: snapshot.data['namaIbu'] ?? "",
      pekerjaanAyah: snapshot.data['pekerjaanAyah'] ?? "",
      pekerjaanIbu: snapshot.data['pekerjaanIbu'] ?? "",
      nomorTlp: snapshot.data['nomorTlp'] ?? "",
      noRegister: snapshot.data['noRegister'] ?? "",
      tempatTanggalLahir: snapshot.data['tempatTanggalLahir'] ?? "",
    );
  }
}
