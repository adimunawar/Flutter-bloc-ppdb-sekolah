part of 'pages.dart';

class DataSiswaPage extends StatefulWidget {
  @override
  _DataSiswaPageState createState() => _DataSiswaPageState();
}

// class Debouncer {
//   final int milliseconds;
//   VoidCallback action;
//   Timer _timer;

//   Debouncer({this.milliseconds});

//   run(VoidCallback action) {
//     if (null != _timer) {
//       _timer.cancel();
//     }
//     _timer = Timer(Duration(milliseconds: milliseconds), action);
//   }
// }

class _DataSiswaPageState extends State<DataSiswaPage> {
  List<Siswa> datasiswa = List();
  List<Siswa> filteredSiswa = List();
  @override
  void initState() {
    super.initState();

    SiswaHttpServices.getSiswa().then((siswaFromServer) {
      setState(() {
        datasiswa = siswaFromServer;
        filteredSiswa = datasiswa;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;
      },
      child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: mainColor,
            onPressed: () async {
              final status = await Permission.storage.request();

              if (status.isGranted) {
                final externalDir = await getExternalStorageDirectory();
                await FlutterDownloader.enqueue(
                    url: "http://192.168.1.100:8000/api/file/siswa_list",
                    savedDir: externalDir.path,
                    fileName: "dowloadan",
                    showNotification: true,
                    openFileFromNotification: true);
              } else {
                print("Permissin Denied");
              }
            },
            label: Text("Excel"),
            icon: Icon(Icons.file_download),
          ),
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
                        Text("Data Siswa",
                            style: blackTextFont.copyWith(fontSize: 20)),
                        Text("SMP Nurul Ihsan ",
                            style: blackTextFont.copyWith(fontSize: 20)),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(
                //   bottom: 90,
                // ),
                margin: EdgeInsets.only(
                  top: 100,
                ),

                child: Center(
                    child: FloatingSearchBar.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  leading: Icon(Icons.search),
                  pinned: true,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      // await PpdbServices.deletePpdb(filteredppdb[index].nis);
                      // context
                      //     .bloc<PageBloc>()
                      //     .add(GoToDetailPpdbPage(filteredSiswa[index]));
                    },
                    child: Card(
                        margin: EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: (index == filteredSiswa.length - 1) ? 20 : 10,
                          // top: (index == 0) ? 0 : 20
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: mainColor,
                          ),
                          title: Text("${filteredSiswa[index].nama}"),
                          trailing: Text("${filteredSiswa[index].kelas}"),
                        )),
                  ),
                  itemCount: filteredSiswa.length,
                  onChanged: (string) {
                    setState(() {
                      filteredSiswa = datasiswa
                          .where((u) => (u.nama
                              .toLowerCase()
                              .contains(string.toLowerCase())))
                          .toList();
                    });
                  },
                  trailing: GestureDetector(
                    onTap: () async {
                      // final status = await Permission.storage.request();

                      // if (status.isGranted) {
                      //   final externalDir = await getExternalStorageDirectory();
                      //   await FlutterDownloader.enqueue(
                      //       url:
                      //           "http://192.168.1.100:8000/api/file/siswa_list",
                      //       savedDir: externalDir.path,
                      //       fileName: "dowloadan",
                      //       showNotification: true,
                      //       openFileFromNotification: true);
                      // } else {
                      //   print("Permissin Denied");
                      // }
                    },
                    child: CircleAvatar(
                      backgroundColor: accentColor2,
                      child: Icon(Icons.search),
                    ),
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: "...Ketikan nama",
                  ),
                )),
              ),
            ],
          )),
    );
  }
}
