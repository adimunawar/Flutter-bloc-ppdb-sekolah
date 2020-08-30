part of 'pages.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<String> menuAdmin = [
  // 'PPDB',
  'Data PPDB',
  'Data Kelas',
  'Data Siswa',
  'Pengumuman',
  'Kontak',
  'Tentang',
];

final List<String> menuSiswa = [
  'PPDB',
  'Info PPDD',
  'Pengumuman',
  'Kontak',
  'Tentang',
  // 'Data PPDB',
];

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

final List<Widget> imageSliders = dummyImage
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item.image,
                      fit: BoxFit.cover,
                      // width: 1000.0,
                      height: 1000.0,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          '${item.judul} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class _HomePageState extends State<HomePage> {
  int _current = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: accentColor1,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          padding: EdgeInsets.fromLTRB(defaultmargin, 20, defaultmargin, 30),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (_, userState) {
              if (userState is UserLoaded) {
                return Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xFF5F5588), width: 1)),
                      child: Stack(
                        children: <Widget>[
                          SpinKitFadingCircle(
                            color: accentColor2,
                            size: 50,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: (userState.user.profilePicture == ""
                                    ? AssetImage("assets/user_pic.png")
                                    : NetworkImage(
                                        userState.user.profilePicture)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width -
                              2 * defaultmargin -
                              78,
                          child: Text(
                            greeting(),
                            style: whiteTextFont.copyWith(fontSize: 18),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(userState.user.name,
                            style: whiteTextFont.copyWith(fontSize: 16))
                      ],
                    )
                  ],
                );
              } else {
                return SpinKitFadingCircle(
                  color: accentColor2,
                  size: 50,
                );
              }
            },
          ),
        ),

        //slider

        SizedBox(
          height: 15,
        ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            autoPlay: true,
            // enlargeCenterPage: true,
            aspectRatio: 2.0,
            autoPlayInterval: Duration(seconds: 5),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape:
                      _current == index ? BoxShape.rectangle : BoxShape.circle,
                  color: _current == index
                      ? Color(0xFFFBD460)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ),

        //Main Menus
        Container(
          padding: EdgeInsets.fromLTRB(defaultmargin, 20, defaultmargin, 12),
          child: Text(
            "Main Menus",
            style: blackTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        BlocBuilder<UserBloc, UserState>(
          builder: (_, userState) {
            if (userState is UserLoaded) {
              double width =
                  (MediaQuery.of(context).size.width - 3 * defaultmargin - 24) /
                      3;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  direction: Axis.horizontal,
                  children: List.generate(
                      (userState.user.userLevel == "admin")
                          ? menuAdmin.length
                          : menuSiswa.length,
                      (index) => MainMenuCard(
                              (userState.user.userLevel == "admin")
                                  ? menuAdmin[index]
                                  : menuSiswa[index],
                              width: width, onTap: () {
                            if (userState.user.userLevel == "admin") {
                              selectMenuAdmin(menuAdmin[index]);
                            } else {
                              selectMenuSiswa(menuSiswa[index]);
                            }
                          })),
                ),
              );
            } else {
              return SpinKitFadingCircle(
                color: mainColor,
                size: 50,
              );
            }
          },
        ),

        Container(
          padding: EdgeInsets.fromLTRB(defaultmargin, 30, defaultmargin, 16),
          child: Text(
            "Berita Nurul Ikhsan",
            style: blackTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        Column(
          children: dummyBerita
              .map((e) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: BeritaCard(e,
                        onTap: () {},
                        width: (MediaQuery.of(context).size.width -
                            2 * defaultmargin)),
                  ))
              .toList(),
        ),

        SizedBox(height: 100)
      ],
    );
  }

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Selamat Pagi';
    } else if (hour < 17) {
      return 'Selamat Siang';
    } else {
      return 'Selamat Malam';
    }
  }

  void selectMenuAdmin(
    String menuAdmin,
  ) {
    switch (menuAdmin) {
      case "PPDB":
        return context.bloc<PageBloc>().add(GoToPpdbSiswa(PpdbData()));
        break;
      case "Kontak":
        return context.bloc<PageBloc>().add(GoToKontakPage());
        break;
      case "Tentang":
        return context.bloc<PageBloc>().add(GoToMyDatappdb());
        break;
      case "Data PPDB":
        return context.bloc<PageBloc>().add(GoToDataPpdbPage());
        break;
      case "Data Siswa":
        return context.bloc<PageBloc>().add(GoToDataSiswaPage());
        break;
      case "Pengumuman":
        return context.bloc<PageBloc>().add(GoToPengumumanAdmin());
        break;
      default:
        return;
    }
  }

  void selectMenuSiswa(
    String menuSiswa,
  ) {
    switch (menuSiswa) {
      case "PPDB":
        return context.bloc<PageBloc>().add(GoToPpdbSiswa(PpdbData()));
        break;
      case "Kontak":
        return context.bloc<PageBloc>().add(GoToKontakPage());
        break;
      case "Tentang":
        return context.bloc<PageBloc>().add(GoToMyDatappdb());
        break;
      case "Data PPDB":
        return context.bloc<PageBloc>().add(GoToDataPpdbPage());
        break;
      default:
        return;
    }
  }
}
