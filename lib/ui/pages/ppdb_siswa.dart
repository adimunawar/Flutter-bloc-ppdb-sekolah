part of 'pages.dart';

class PpdbSiswa extends StatefulWidget {
  final PpdbData ppdbData;

  PpdbSiswa(this.ppdbData);
  @override
  _PpdbSiswaState createState() => _PpdbSiswaState();
}

class _PpdbSiswaState extends State<PpdbSiswa> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nisController = TextEditingController();
  TextEditingController nisnController = TextEditingController();
  TextEditingController kelaminController = TextEditingController();
  TextEditingController agamaController = TextEditingController();
  TextEditingController temaptTanggalLahirController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController asalSekolahController = TextEditingController();
  TextEditingController namaAyahController = TextEditingController();
  TextEditingController namaIbuController = TextEditingController();
  TextEditingController pekerjaanAyahController = TextEditingController();
  TextEditingController pekerjaanIbuController = TextEditingController();
  TextEditingController nomorTlpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    namaController.text = widget.ppdbData.nama;
    nisController.text = widget.ppdbData.nis;
    nisnController.text = widget.ppdbData.nisn;
    kelaminController.text = widget.ppdbData.kelamin;
    agamaController.text = widget.ppdbData.agama;
    temaptTanggalLahirController.text = widget.ppdbData.tempatTanggalLahir;
    alamatController.text = widget.ppdbData.alamatSiswa;
    asalSekolahController.text = widget.ppdbData.asalSekolah;
    namaAyahController.text = widget.ppdbData.namaAyah;
    namaIbuController.text = widget.ppdbData.namaIbu;
    pekerjaanAyahController.text = widget.ppdbData.pekerjaanAyah;
    pekerjaanIbuController.text = widget.ppdbData.pekerjaanIbu;
    nomorTlpController.text = widget.ppdbData.nomorTlp;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(
            color: accentColor1,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultmargin),
            // color: Colors.white,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 22),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            context.bloc<PageBloc>().add(GoToMainPage());
                          },
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ),
                      Center(
                        child: Column(children: <Widget>[
                          Text("PPDB",
                              style: blackTextFont.copyWith(fontSize: 20)),
                          Text("SMP Nurul Ikhsan",
                              style: blackTextFont.copyWith(fontSize: 20)),
                        ]),
                      ),
                    ],
                  ),
                ),
                Text("a. Data Siswa",
                    style: blackTextFont.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w500)),
                Container(
                  padding: EdgeInsets.only(bottom: 9),
                  child: Divider(
                    color: Color(0xFFE4E4E4),
                    thickness: 1,
                  ),
                ),
                Text("Nama Lengkap"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "Nama Lengkap",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("No Induk SD/MI"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: nisController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: "Nama Lengkap",
                    hintText: "Masukan nomor induk SD/MI",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    hintStyle: greyTextFont.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("NISN"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: nisnController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: "Nama Lengkap",
                    hintText: "Masukan NISN",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    hintStyle: greyTextFont.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Jenis Kelamin"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: kelaminController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: "Nama Lengkap",
                    hintText: "Masukan Jenis Kelamin",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    hintStyle: greyTextFont.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Agama"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: agamaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: "Nama Lengkap",
                    hintText: "Masukan Agama yang dianut",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    hintStyle: greyTextFont.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Tempat, Tanggal Lahir"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: temaptTanggalLahirController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: "Nama Lengkap",
                    hintText: "Masukan tempat dan tanggal lahir",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    hintStyle: greyTextFont.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Asal Sekolah"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: asalSekolahController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "masukan asal Sekolah",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Alamat"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: alamatController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: "Nama Lengkap",
                    hintText: "Maasukan alamat lengkap",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    hintStyle: greyTextFont.copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text("b. Data Wali Siswa",
                    style: blackTextFont.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w500)),
                Container(
                  padding: EdgeInsets.only(bottom: 9),
                  child: Divider(
                    color: Color(0xFFE4E4E4),
                    thickness: 1,
                  ),
                ),
                Text("Nama Ayah"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: namaAyahController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "Nama ayah kandng",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Nama Ibu "),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: namaIbuController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "Nama ibu",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Pekerjaan Ayah"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: pekerjaanAyahController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "Pekerjaan Ayah",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Pekerjan Ibu"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: pekerjaanIbuController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "Pekerjaan Ibu",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Nomor Telephon"),
                SizedBox(
                  height: 6,
                ),
                TextField(
                  controller: nomorTlpController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // labelText: "Nama Lengkap",
                      hintText: "Masukan nomor telphon ",
                      hintStyle: greyTextFont.copyWith(fontSize: 12)),
                ),
                BlocBuilder<UserBloc, UserState>(
                  builder: (_, userState) {
                    User user = (userState as UserLoaded).user;
                    return Container(
                      width: 250,
                      height: 46,
                      margin: EdgeInsets.only(top: 50, bottom: 30),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Simpan ",
                          style: whiteNumberFont.copyWith(fontSize: 18),
                        ),
                        color: mainColor,
                        onPressed: () {
                          if (!(namaController.text.trim() != "" &&
                              agamaController.text.trim() != "" &&
                              nisnController.text.trim() != "" &&
                              kelaminController.text.trim() != "" &&
                              asalSekolahController.text.trim() != "" &&
                              alamatController.text.trim() != "" &&
                              namaAyahController.text.trim() != "" &&
                              namaIbuController.text.trim() != "" &&
                              pekerjaanAyahController.text.trim() != "" &&
                              pekerjaanIbuController.text.trim() != "" &&
                              nomorTlpController.text.trim() != "" &&
                              temaptTanggalLahirController.text.trim() != "" &&
                              nisController.text.trim() != "")) {
                            Flushbar(
                              duration: Duration(milliseconds: 1500),
                              flushbarPosition: FlushbarPosition.TOP,
                              backgroundColor: Color(0xFFFF5C83),
                              message: "Tolong Lengkapi semua form",
                            )..show(context);
                          } else {
                            widget.ppdbData.nama = namaController.text;
                            widget.ppdbData.siswaId = user.id;
                            widget.ppdbData.nis = nisController.text;
                            widget.ppdbData.agama = agamaController.text;
                            widget.ppdbData.nisn = nisnController.text;
                            widget.ppdbData.kelamin = kelaminController.text;
                            widget.ppdbData.alamatSiswa = alamatController.text;
                            widget.ppdbData.asalSekolah =
                                asalSekolahController.text;
                            widget.ppdbData.tempatTanggalLahir =
                                temaptTanggalLahirController.text;
                            widget.ppdbData.namaAyah = namaAyahController.text;
                            widget.ppdbData.namaIbu = namaIbuController.text;
                            widget.ppdbData.pekerjaanAyah =
                                pekerjaanAyahController.text;
                            widget.ppdbData.pekerjaanIbu =
                                pekerjaanIbuController.text;
                            widget.ppdbData.nomorTlp = nomorTlpController.text;
                            widget.ppdbData.noRegister =
                                randomAlphaNumeric(10).toUpperCase();
                            context
                                .bloc<PageBloc>()
                                .add(GoToConfirmationPpdb(widget.ppdbData));
                          }
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
