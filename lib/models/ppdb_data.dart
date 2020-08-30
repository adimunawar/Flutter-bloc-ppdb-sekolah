part of 'models.dart';

class PpdbData {
  String siswaId;
  String nama;
  String nis;
  String nisn;
  String kelamin;
  String agama;
  String tempatTanggalLahir;
  String alamatSiswa;
  String asalSekolah;
  String namaAyah;
  String namaIbu;
  String pekerjaanAyah;
  String pekerjaanIbu;
  String noRegister;
  String nomorTlp;

  PpdbData(
      {this.siswaId = "",
      this.nama = "",
      this.agama = "",
      this.alamatSiswa = "",
      this.kelamin = "",
      this.nis = "",
      this.nisn = "",
      this.tempatTanggalLahir = "",
      this.asalSekolah = "",
      this.namaAyah = "",
      this.namaIbu = "",
      this.nomorTlp = "",
      this.pekerjaanIbu = "",
      this.noRegister = "",
      this.pekerjaanAyah = ""});
}
