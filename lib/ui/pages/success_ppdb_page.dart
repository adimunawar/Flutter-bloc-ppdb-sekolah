part of 'pages.dart';

class SuccessPpdbPage extends StatelessWidget {
  final Ppdb ppdb;
  SuccessPpdbPage(this.ppdb);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return;
      },
      child: Scaffold(
        body: FutureBuilder(
            future: processingPpdb(context),
            builder: (_, snapshot) => (snapshot.connectionState ==
                    ConnectionState.done)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.only(bottom: 70),
                        color: Colors.green,
                      ),
                      Text(
                        "Selamat Datang",
                        style: blackTextFont.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Kamu sudah berhasil\nmendaftar",
                        textAlign: TextAlign.center,
                        style: blackTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      Container(
                        height: 45,
                        width: 250,
                        margin: EdgeInsets.only(top: 70, bottom: 20),
                        child: RaisedButton(
                            elevation: 0,
                            color: mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              "Data Saya",
                              style: whiteTextFont.copyWith(fontSize: 16),
                            ),
                            onPressed: () {
                              context.bloc<PageBloc>().add(GoToMyDatappdb());
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Infomasi terbaru? ",
                            style: greyTextFont.copyWith(
                                fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.bloc<PageBloc>().add(GoToMainPage());
                            },
                            child: Text(
                              "Back to Home",
                              style: purpleTextFont,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                : Center(
                    child: SpinKitFadingCircle(
                      color: mainColor,
                      size: 50,
                    ),
                  )),
      ),
    );
  }

  Future<void> processingPpdb(BuildContext context) async {
    await PpdbHttpServices.postPpdb(ppdb);
    // context.bloc<PpdbBloc>().add(DetailPpdb(ppdb.siswaId));
  }
}
