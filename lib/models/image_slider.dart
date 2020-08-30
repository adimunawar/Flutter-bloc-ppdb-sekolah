part of 'models.dart';

class ImageSlider extends Equatable {
  final String image;
  final String judul;
  final String keterangan;

  ImageSlider({this.image, this.judul, this.keterangan});

  @override
  List<Object> get props => [image, judul, keterangan];
}

List<ImageSlider> dummyImage = [
  ImageSlider(
      image: "assets/pramuka.jpg",
      judul: "Ekskul Pramuka",
      keterangan:
          "Smp Nurul Ikhsan Berhasil Menjadi Juara tingkat Kota Jakarta Timur"),
  ImageSlider(
      image: "assets/paskibra.jpg",
      judul: "Ekskul Paskibra",
      keterangan:
          "Smp Nurul Ikhsan Berhasil Menjadi Juara tingkat Kota Jakarta Timur"),
  ImageSlider(
      image: "assets/sepakbola.jpg",
      judul: "Ekskul Sepakbola",
      keterangan:
          "Smp Nurul Ikhsan Berhasil Menjadi Juara tingkat Kota Jakarta Timur"),
];
