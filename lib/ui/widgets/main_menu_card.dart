part of 'widgets.dart';

class MainMenuCard extends StatelessWidget {
  final String menu;
  final double width;
  final Function onTap;
  MainMenuCard(this.menu, {this.width, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                // color: Color(0xFFEEF1F8),
                // border: Border.all(color: Color(0xFFADADAD), width: 1),
                borderRadius: BorderRadius.circular(15),
                // border:
              ),
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      // color: Colors.amberAccent,
                      // borderRadius: BorderRadius.circular(60)
                      ),
                  child: Image(
                      image: AssetImage(getImageFromMenu(menu)),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(menu)
          ],
        ),
      ),
    );
  }

  String getImageFromMenu(String menu) {
    switch (menu) {
      case "PPDB":
        return "assets/ppdb_ic_new.png";
        break;
      case "Kontak":
        return "assets/call_ic.png";
        break;
      case "Tentang":
        return "assets/logo_smp.png";
        break;
      case "Pengumuman":
        return "assets/pengumuman_ic_new.png";
        break;
      // case "Info PPDB":
      // return "assets/data.png";
      // break;
      // case "Crime":
      // return "assets/ic_crime.png";
      // break;
      default:
        return "assets/data_ppdb_ic_1.png";
    }
  }
}
