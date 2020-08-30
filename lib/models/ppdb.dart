part of 'models.dart';

class Ppdb extends Equatable {
  final String siswaId;
  final String nama;
  final String nis;
  final String nisn;
  final String kelamin;
  final String agama;
  final String tempatTanggalLahir;
  final String alamatSiswa;
  final String asalSekolah;
  final String namaAyah;
  final String namaIbu;
  final String pekerjaanAyah;
  final String pekerjaanIbu;
  final String nomorTlp;
  final String noRegister;

  Ppdb(
      {@required this.siswaId,
      @required this.nama,
      @required this.agama,
      @required this.alamatSiswa,
      @required this.kelamin,
      @required this.nis,
      @required this.nisn,
      @required this.asalSekolah,
      @required this.namaAyah,
      @required this.namaIbu,
      @required this.pekerjaanAyah,
      @required this.pekerjaanIbu,
      @required this.nomorTlp,
      @required this.noRegister,
      @required this.tempatTanggalLahir});

  Ppdb copyWith({
    String siswaId,
    String nama,
    String nis,
    String nisn,
    String kelamin,
    String agama,
    String tempatTanggalLahir,
    String alamatSiswa,
    String asalSekolah,
    String namaAyah,
    String namaIbu,
    String pekerjaanAyah,
    String pekerjaanIbu,
    String nomorTlp,
    String noRegister,
  }) =>
      Ppdb(
          siswaId: this.siswaId,
          nama: this.nama,
          agama: this.agama,
          alamatSiswa: this.alamatSiswa,
          kelamin: this.kelamin,
          nis: this.nis,
          nisn: this.nisn,
          asalSekolah: this.asalSekolah,
          namaAyah: this.namaAyah,
          namaIbu: this.namaIbu,
          pekerjaanAyah: this.pekerjaanAyah,
          pekerjaanIbu: this.pekerjaanIbu,
          nomorTlp: this.nomorTlp,
          noRegister: this.noRegister,
          tempatTanggalLahir: this.tempatTanggalLahir);

  factory Ppdb.fromJson(Map<String, dynamic> json) => Ppdb(
      siswaId: json['siswaId'],
      nama: json['nama'],
      agama: json['agama'],
      alamatSiswa: json['agama'],
      kelamin: json['kelamin'],
      nis: json['nis'],
      nisn: json['nisn'],
      asalSekolah: json['asalSekolah'],
      namaAyah: json['namaAyah'],
      namaIbu: json['namaIbu'],
      pekerjaanAyah: json['pekerjaanAyah'],
      pekerjaanIbu: json['pekerjaanIbu'],
      nomorTlp: json['nomorTlp'],
      noRegister: json['noRegister'],
      tempatTanggalLahir: json['ttl']);

  @override
  List<Object> get props => [
        siswaId,
        nama,
        nis,
        nisn,
        kelamin,
        agama,
        tempatTanggalLahir,
        alamatSiswa,
        asalSekolah,
        namaAyah,
        namaIbu,
        pekerjaanAyah,
        pekerjaanIbu,
        nomorTlp,
        noRegister
      ];
}
