part of 'pages.dart';

class PengumumanAdmin extends StatefulWidget {
  @override
  _PengumumanAdminState createState() => _PengumumanAdminState();
}

class _PengumumanAdminState extends State<PengumumanAdmin> {
  List<Ppdb> ppdbsiswa = List();
  List<Ppdb> filteredppdb = List();
  @override
  void initState() {
    super.initState();

    PpdbServices.getAllPpdb().then((ppdbFromServer) {
      setState(() {
        ppdbsiswa = ppdbFromServer;
        filteredppdb = ppdbsiswa;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: mainColor,
            label: Text("Tambah"),
            icon: Icon(Icons.create),
            onPressed: () {}),
        body: Stack(
          children: <Widget>[
            Container(
              color: accentColor1,
            ),
            SafeArea(
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 22, left: 24),
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
                      Text("Pengumuman",
                          style: blackTextFont.copyWith(fontSize: 20)),
                      Text("PPDB ",
                          style: blackTextFont.copyWith(fontSize: 20)),
                    ]),
                  ),
                ],
              ),
            ),
            // Container(
            //   // padding: EdgeInsets.only(
            //   //   bottom: 90,
            //   // ),
            //   margin: EdgeInsets.only(
            //     top: 130,
            //   ),

            //   child: Center(
            //       child: ListView.builder(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: 12,
            //     ),
            //     itemBuilder: (_, index) => InkWell(
            //       onTap: () {
            //         // await PpdbServices.deletePpdb(filteredppdb[index].nis);
            //         context
            //             .bloc<PageBloc>()
            //             .add(GoToDetailPpdbPage(filteredppdb[index]));
            //         print(filteredppdb[index].nis);
            //       },
            //       child: BeritaCard(filteredppdb[index], width: 50,)
            //     ),
            //     itemCount: filteredppdb.length,
            //   )),
            // ),

            Container(
              margin: EdgeInsets.only(top: 90),
              child: ListView(
                children: dummyPengumuman
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: BeritaCard(e,
                              onTap: () {},
                              width: (MediaQuery.of(context).size.width -
                                  2 * defaultmargin)),
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
