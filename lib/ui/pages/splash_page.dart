part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo_smp.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 16),
                child: Text(
                  "Welcome to Our Happy School",
                  style: blackTextFont.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Text("SIT Nurul Ihsan",
                  style: blackTextFont.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(top: 70, bottom: 19),
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: RaisedButton(
                  child: Text("Bergabung Sekarang",
                      style: blackTextFont.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  color: mainColor,
                  onPressed: () {
                    context
                        .bloc<PageBloc>()
                        .add(GoToRegistrationPage(RegistrationData()));
                  },
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Sudah mempunyai akun? ",
                        style:
                            greyTextFont.copyWith(fontWeight: FontWeight.w400)),
                    GestureDetector(
                      onTap: () {
                        context.bloc<PageBloc>().add(GoToLoginPage());
                      },
                      child: Text(
                        "Masuk",
                        style: purpleTextFont,
                      ),
                    )
                  ])
            ]),
      ),
    );
  }
}
