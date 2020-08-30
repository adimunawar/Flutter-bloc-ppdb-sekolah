part of 'pages.dart';

class MyDataPpdb extends StatefulWidget {
  @override
  _MyDataPpdbState createState() => _MyDataPpdbState();
}

class _MyDataPpdbState extends State<MyDataPpdb> {
  String nama = "";
  String noRegister = "";
  String nisn = "";
  String jenisKelamin = "";
  String ttl = "";
  String agama = "";
  String asalSekolah = "";
  String alamat = "";
  String ayah = "";
  String ibu = "";
  String tlp = "";

  Future<Uint8List> generatePdf() async {
    final pdf = pw.Document();
    final PdfImage profileImage = PdfImage.file(
      pdf.document,
      bytes:
          (await rootBundle.load('assets/logo_smp.png')).buffer.asUint8List(),
    );

    pdf.addPage(pw.Page(
        build: (pw.Context context) => pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: <pw.Widget>[
                  pw.Container(
                      padding: const pw.EdgeInsets.only(left: 150, bottom: 20),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: <pw.Widget>[
                            pw.Container(
                              padding: const pw.EdgeInsets.only(bottom: 10),
                              width: 150,
                              height: 150,
                              child: pw.Image(profileImage),
                            ),
                            pw.Text("SIT Nurul Ihsan",
                                textScaleFactor: 2,
                                textAlign: pw.TextAlign.center),
                            pw.Padding(
                                padding: const pw.EdgeInsets.only(top: 20)),
                          ])),

                  pw.Container(
                    padding: const pw.EdgeInsets.only(left: 90, bottom: 20),
                    child: pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: <pw.Widget>[
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: <pw.Widget>[
                                pw.Text('No Register'),
                                pw.SizedBox(height: 9),
                                pw.Text('Nama Lengkap'),
                                pw.SizedBox(height: 9),
                                pw.Text('NISN'),
                                pw.SizedBox(height: 9),
                                pw.Text('Jenis Kelamin'),
                                pw.SizedBox(height: 9),
                                pw.Text('Tempat / Tanggal Lahir'),
                                pw.SizedBox(height: 9),
                                pw.Text('Agama'),
                                pw.SizedBox(height: 9),
                                pw.Text('Asala Sekolah'),
                                pw.SizedBox(height: 9),
                                pw.Text('Alamat Siswa'),
                                pw.SizedBox(height: 9),
                                pw.Text('Nama Ayah'),
                                pw.SizedBox(height: 9),
                                pw.Text('Nama IBu'),
                                pw.SizedBox(height: 9),
                                pw.Text('No Tlp'),
                                pw.SizedBox(height: 9),
                              ]),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: <pw.Widget>[
                                pw.Text(noRegister),
                                pw.SizedBox(height: 9),
                                pw.Text(nama),
                                pw.SizedBox(height: 9),
                                pw.Text(nisn),
                                pw.SizedBox(height: 9),
                                pw.Text(jenisKelamin),
                                pw.SizedBox(height: 9),
                                pw.Text(ttl),
                                pw.SizedBox(height: 9),
                                pw.Text(agama),
                                pw.SizedBox(height: 9),
                                pw.Text(asalSekolah),
                                pw.SizedBox(height: 9),
                                pw.Text(alamat),
                                pw.SizedBox(height: 9),
                                pw.Text(ayah),
                                pw.SizedBox(height: 9),
                                pw.Text(ibu),
                                pw.SizedBox(height: 9),
                                pw.Text(tlp),
                              ]),
                          pw.Padding(padding: pw.EdgeInsets.zero)
                        ]),
                  )

                  // pw.Container(
                  //   width: 200,
                  //   height: 200,
                  //   child: pw.Image(profileImage),
                  // ),
                ])));
    return pdf.save();
  }

  Future printPdf() async {
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => generatePdf());
  }

  @override
  Widget build(BuildContext context) {
    // String nama;
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: accentColor1,
            ),
            SafeArea(
              child: Container(
                color: Color(0xFFF0F7F9),
              ),
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 22, left: 24),
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
                          Text("Detail Data",
                              style: blackTextFont.copyWith(fontSize: 20)),
                          Text("PPDB ",
                              style: blackTextFont.copyWith(fontSize: 20)),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                        // border: Border.all(color: Colors.black, width: 2)
                        ),
                    child: BlocBuilder<PpdbBloc, PpdbState>(
                      builder: (_, ppdbState) {
                        Ppdb ppdb = (ppdbState as GetDetailPpdb).ppdb;
                        // setState(() {
                        //   myppdb.nama = ppdb.nama;
                        // });

                        return Column(children: <Widget>[
                          Container(
                              height: 100,
                              margin: EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/logo_smp.png")))),
                          Text(
                            "PPDB SIT Nurul Ihsan",
                            style: blackTextFont.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            child: Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                            ),
                          ),
                          SizedBox(height: 12),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("No Pendaftaran",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.noRegister,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Nama Lengkap",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.nama,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("No Nisn",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.nama,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Jenis Kelamin",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.kelamin,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Tempat Tangga Lahir",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.tempatTanggalLahir,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Agama",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.agama,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Asal Sekolah",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.asalSekolah,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Alamat Siswa",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.alamatSiswa,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Nama Ayah",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.namaAyah,
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Nama Ibu",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.namaIbu ?? "",
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Pekerjaan Ayah",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.pekerjaanAyah ?? "",
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Pekerjaan Ibu",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.pekerjaanIbu ?? "",
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          SizedBox(height: 9),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Nomor Telephone",
                                    style: greyTextFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text(ppdb.nomorTlp ?? "",
                                    style: whiteNumberFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                        ]);
                      },
                    )),
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
                            child: BlocBuilder<PpdbBloc, PpdbState>(
                                builder: (_, ppdbState) {
                              Ppdb ppdb = (ppdbState as GetDetailPpdb).ppdb;

                              return RaisedButton(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  color: mainColor,
                                  child: Text("Print",
                                      style: whiteNumberFont.copyWith(
                                          fontSize: 16)),
                                  onPressed: () async {
                                    setState(() {
                                      nama = ppdb.nama;
                                      noRegister = ppdb.noRegister;
                                      nisn = ppdb.nisn;
                                      jenisKelamin = ppdb.kelamin;
                                      agama = ppdb.agama;
                                      ttl = ppdb.tempatTanggalLahir;
                                      asalSekolah = ppdb.asalSekolah;
                                      alamat = ppdb.alamatSiswa;
                                      ayah = ppdb.namaAyah;
                                      ibu = ppdb.namaIbu;
                                      tlp = ppdb.nomorTlp;
                                    });
                                    generatePdf();
                                    printPdf();
                                  });
                            })),
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
                              color: accentColor2,
                              child: Text("Edit",
                                  style:
                                      whiteNumberFont.copyWith(fontSize: 16)),
                              onPressed: () async {}),
                        ),
                      ]),
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
