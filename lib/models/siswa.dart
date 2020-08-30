part of 'models.dart';

class Siswa extends Equatable {
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
  final String kelas;
  final String status;

  Siswa(
      this.siswaId,
      this.nama,
      this.agama,
      this.alamatSiswa,
      this.kelamin,
      this.nis,
      this.nisn,
      this.asalSekolah,
      this.namaAyah,
      this.namaIbu,
      this.pekerjaanAyah,
      this.pekerjaanIbu,
      this.nomorTlp,
      this.kelas,
      this.status,
      this.tempatTanggalLahir);

  Siswa copyWith({
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
    String status,
    String kelas,
  }) =>
      Siswa(
          this.siswaId,
          nama ?? this.nama,
          agama ?? this.agama,
          alamatSiswa ?? this.alamatSiswa,
          kelamin ?? this.kelamin,
          nis ?? this.nis,
          nisn ?? this.nisn,
          asalSekolah ?? this.asalSekolah,
          namaAyah ?? this.namaAyah,
          namaIbu ?? this.namaIbu,
          pekerjaanAyah ?? this.pekerjaanAyah,
          pekerjaanIbu ?? this.pekerjaanIbu,
          nomorTlp ?? this.nomorTlp,
          kelas ?? this.kelas,
          status ?? this.status,
          tempatTanggalLahir ?? this.tempatTanggalLahir);

  factory Siswa.fromJson(Map<String, dynamic> json) => Siswa(
        json['siswaId'],
        json['nama'],
        json['agama'],
        json['alamat'],
        json['kelamin'],
        json['nis'],
        json['nisn'],
        json['asalSekolah'],
        json['namaAyah'],
        json['namaIbu'],
        json['pekerjaanAyah'],
        json['pekerjaanIbu'],
        json['nomorTlp'],
        json['kelas'],
        json['status'],
        json['ttl'],
      );
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
        status,
        kelas,
      ];
}
