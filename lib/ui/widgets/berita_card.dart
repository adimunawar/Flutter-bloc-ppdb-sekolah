part of 'widgets.dart';

class BeritaCard extends StatelessWidget {
  final Berita berita;
  final Function onTap;
  final double width;

  BeritaCard(this.berita, {this.onTap, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 120,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 9),
      decoration: BoxDecoration(
          color: Color(0xFFEEF1F8), borderRadius: BorderRadius.circular(8)),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(berita.image), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  berita.judul,
                  style: whiteNumberFont.copyWith(
                      fontSize: 18, color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  width: (MediaQuery.of(context).size.width -
                          2 * defaultmargin -
                          20 -
                          100 -
                          10) -
                      20,
                  child: Text(
                    berita.subJudul,
                    style: TextStyle(fontSize: 14),
                    // maxLines: 3,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
