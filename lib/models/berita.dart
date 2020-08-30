part of 'models.dart';

class Berita extends Equatable {
  final String image;
  final String judul;
  final String subJudul;
  final String isi;

  Berita({this.image, this.judul, this.subJudul, this.isi});
  @override
  List<Object> get props => [image, judul, subJudul, isi];
}

List<Berita> dummyBerita = [
  Berita(
      image: "assets/pramuka.jpg",
      judul: "Juara Pramaku",
      subJudul: "Smp Nurul ikhsan Juara Pramuka Tingkat Provinsi DKI Jakarta"),
  Berita(
      image: "assets/paskibra.jpg",
      judul: "Juara Paskibra",
      subJudul: "Smp Nurul ikhsan Juara Paskibra Tingkat Provinsi DKI Jakarta"),
  Berita(
      image: "assets/ppdb.png",
      judul: "PPDB 2020",
      subJudul:
          "Smp Nurul ikhsan membuka penerimaan peserta didik baru angkatan 2020/2021"),
  Berita(
      image: "assets/ppdb.png",
      judul: "PPDB 2020",
      subJudul:
          "Smp Nurul ikhsan membuka penerimaan peserta didik baru angkatan 2020/2021"),
  Berita(
      image: "assets/ppdb.png",
      judul: "PPDB 2020",
      subJudul:
          "Smp Nurul ikhsan membuka penerimaan peserta didik baru angkatan 2020/2021"),
].sublist(0, 3);
List<Berita> dummyPengumuman = [
  Berita(
      image: "assets/pramuka.jpg",
      judul: "Juara Pramaku",
      subJudul: "Smp Nurul ikhsan Juara Pramuka Tingkat Provinsi DKI Jakarta"),
  Berita(
      image: "assets/paskibra.jpg",
      judul: "Juara Paskibra",
      subJudul: "Smp Nurul ikhsan Juara Paskibra Tingkat Provinsi DKI Jakarta"),
  Berita(
      image: "assets/ppdb.png",
      judul: "PPDB 2020",
      subJudul:
          "Smp Nurul ikhsan membuka penerimaan peserta didik baru angkatan 2020/2021"),
  Berita(
      image: "assets/ppdb.png",
      judul: "PPDB 2020",
      subJudul:
          "Smp Nurul ikhsan membuka penerimaan peserta didik baru angkatan 2020/2021"),
  Berita(
      image: "assets/ppdb.png",
      judul: "PPDB 2020",
      subJudul:
          "Smp Nurul ikhsan membuka penerimaan peserta didik baru angkatan 2020/2021"),
];
