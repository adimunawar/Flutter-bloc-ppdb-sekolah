part of 'pages.dart';

class DetailPpdbPage extends StatefulWidget {
  final Ppdb ppdb;

  DetailPpdbPage(this.ppdb);
  @override
  _DetailPpdbPageState createState() => _DetailPpdbPageState();
}

class _DetailPpdbPageState extends State<DetailPpdbPage> {
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
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: 15, bottom: 20, left: defaultmargin, right: 24),
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
                        Text("Detail",
                            style: blackTextFont.copyWith(fontSize: 20)),
                        Text("Peserta Ppdb",
                            style: blackTextFont.copyWith(fontSize: 20)),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Divider(
                  color: Color(0xFFE4E4E4),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("No Pendaftaran",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.noRegister,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Nama Lengkap",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.nama,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("No Nisn",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.nisn,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Jenis Kelamin",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.kelamin,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Agama",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.agama,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Asal Sekolah",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.asalSekolah,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Alamat Siswa",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.alamatSiswa,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Nama Ayah",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.namaAyah,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Nama Ibu",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.namaIbu,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Pekerjaan Ayah",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.pekerjaanAyah,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Pekerjaan Ibu",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.pekerjaanIbu ?? "",
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Nomor Tlp wali",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(widget.ppdb.nomorTlp,
                        style: whiteNumberFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: 9),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Divider(
                  color: Color(0xFFE4E4E4),
                  thickness: 1,
                ),
              ),
              Container(
                // width: 250,
                // height: 46,
                margin: EdgeInsets.only(top: 36, right: 24, left: 24),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 46,
                        width: (MediaQuery.of(context).size.width -
                                2 * defaultmargin -
                                10) /
                            2,
                        child: RaisedButton(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            color: mainColor,
                            child: Text("Konfirmasi",
                                style: whiteNumberFont.copyWith(fontSize: 16)),
                            onPressed: () {
                              Siswa siswa = Siswa(
                                widget.ppdb.siswaId,
                                widget.ppdb.nama,
                                widget.ppdb.agama,
                                widget.ppdb.alamatSiswa,
                                widget.ppdb.kelamin,
                                widget.ppdb.nis,
                                widget.ppdb.nisn,
                                widget.ppdb.asalSekolah,
                                widget.ppdb.namaAyah,
                                widget.ppdb.namaIbu,
                                widget.ppdb.pekerjaanAyah,
                                widget.ppdb.pekerjaanIbu,
                                widget.ppdb.nomorTlp,
                                "",
                                "aktif",
                                widget.ppdb.tempatTanggalLahir,
                              );
                              context
                                  .bloc<PageBloc>()
                                  .add(GoToSuccessKonfirmasiPpdbPage(siswa));
                            }),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(
                        height: 46,
                        width: (MediaQuery.of(context).size.width -
                                2 * defaultmargin -
                                10) /
                            2,
                        child: RaisedButton(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            color: Colors.pinkAccent,
                            child: Text("Tolak",
                                style: whiteNumberFont.copyWith(fontSize: 16)),
                            onPressed: () async {
                              await PpdbServices.deletePpdb(
                                  widget.ppdb.siswaId);
                              print(widget.ppdb.nama);
                            }),
                      ),
                    ]),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
