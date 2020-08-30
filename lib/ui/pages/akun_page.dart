part of 'pages.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 22),
                height: 56,
                child: Stack(
                  children: <Widget>[],
                ),
              ),

              BlocBuilder<UserBloc, UserState>(
                builder: (_, userState) {
                  if (userState is UserLoaded) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 6),
                          width: 100,
                          height: 100,
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
                        Text(
                          userState.user.name,
                          style: blackTextFont.copyWith(fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          userState.user.email,
                          style: greyTextFont.copyWith(fontSize: 18),
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

              // Container(
              //   margin: EdgeInsets.only(bottom: 20),
              //   width: 150,
              //   height: 150,
              //   decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       image: DecorationImage(
              //           image: (widget.registrationData.profileImage == null)
              //               ? AssetImage("assets/user_pic.png")
              //               : FileImage(widget.registrationData.profileImage),
              //           fit: BoxFit.cover)),
              // ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              Icon(
                Icons.edit,
                color: mainColor,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Edit Profile",
                  style: blackTextFont.copyWith(fontSize: 18),
                ),
              )
            ],
          ),
          Divider(color: Color(0xFFADADAD)),
          Container(
            margin: EdgeInsets.only(bottom: 6, top: 6),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.help,
                  color: mainColor,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Pusat Bantuan",
                    style: blackTextFont.copyWith(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Color(0xFFADADAD),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, bottom: 6),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.save,
                  color: mainColor,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Data Saya",
                    style: blackTextFont.copyWith(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Color(0xFFADADAD),
          ),
          Container(
            margin: EdgeInsets.only(top: 6, bottom: 6),
            child: Row(
              children: <Widget>[
                Icon(Icons.exit_to_app, color: mainColor),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Keluar",
                    style: blackTextFont.copyWith(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Color(0xFFADADAD),
          ),
        ],
      ),
    );
  }
}
