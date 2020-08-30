part of 'pages.dart';

class ConfirmationPpdb extends StatefulWidget {
  final PpdbData ppdbData;

  ConfirmationPpdb(this.ppdbData);
  @override
  _ConfirmationPpdbState createState() => _ConfirmationPpdbState();
}

class _ConfirmationPpdbState extends State<ConfirmationPpdb> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToPpdbSiswa(widget.ppdbData));
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
                          context
                              .bloc<PageBloc>()
                              .add(GoToPpdbSiswa(widget.ppdbData));
                        },
                        child: Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Column(children: <Widget>[
                        Text("Konfirmasi",
                            style: blackTextFont.copyWith(fontSize: 20)),
                        Text("Data Ppdb",
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
                    Text(widget.ppdbData.noRegister,
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
                    Text(widget.ppdbData.nama,
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
                    Text(widget.ppdbData.nisn,
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
                    Text(widget.ppdbData.kelamin,
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
                    Text(widget.ppdbData.agama,
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
                    Text(widget.ppdbData.asalSekolah,
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
                    Text(widget.ppdbData.alamatSiswa,
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
                    Text(widget.ppdbData.namaAyah,
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
                    Text(widget.ppdbData.namaIbu,
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
                    Text(widget.ppdbData.pekerjaanAyah,
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
                    Text(widget.ppdbData.pekerjaanIbu,
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
                    Text(widget.ppdbData.nomorTlp,
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
                width: 250,
                height: 46,
                margin:
                    EdgeInsets.only(top: 36, bottom: 50, right: 24, left: 24),
                child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: mainColor,
                    child: Text("Daftar Sekarang",
                        style: whiteNumberFont.copyWith(fontSize: 16)),
                    onPressed: () async {
                      Ppdb ppdb = Ppdb(
                        siswaId: widget.ppdbData.siswaId,
                        nama: widget.ppdbData.nama,
                        agama: widget.ppdbData.agama,
                        alamatSiswa: widget.ppdbData.alamatSiswa,
                        kelamin: widget.ppdbData.kelamin,
                        nis: widget.ppdbData.nis,
                        nisn: widget.ppdbData.nisn,
                        asalSekolah: widget.ppdbData.asalSekolah,
                        namaAyah: widget.ppdbData.namaAyah,
                        namaIbu: widget.ppdbData.namaIbu,
                        pekerjaanAyah: widget.ppdbData.pekerjaanAyah,
                        pekerjaanIbu: widget.ppdbData.pekerjaanIbu,
                        nomorTlp: widget.ppdbData.nomorTlp,
                        noRegister: widget.ppdbData.noRegister,
                        tempatTanggalLahir: widget.ppdbData.tempatTanggalLahir,
                      );

                      // await PpdbHttpServices.postPpdb(ppdb);
                      context.bloc<PageBloc>().add(GoToSuccessPpdbPage(ppdb));
                    }),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
