part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));
        context.bloc<PpdbBloc>().add(GetAllPpdb());
        // context.bloc<PpdbBloc>().add(DetailPpdb(firebaseUser.uid));
        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnLoginPage)
                ? SignInPage()
                : (pageState is OnPpdbSIswa)
                    ? PpdbSiswa(pageState.ppdbData)
                    : (pageState is OnConfirmationPpdb)
                        ? ConfirmationPpdb(pageState.ppdbData)
                        : (pageState is OnSuccessPpdbPage)
                            ? SuccessPpdbPage(pageState.ppdb)
                            : (pageState is OnKontakPage)
                                ? KontakPage()
                                : (pageState is OnPengumumanPage)
                                    ? PengumumanPage()
                                    : (pageState is OnTentangPage)
                                        ? TentangPage()
                                        : (pageState is OnDataPpdbPage)
                                            ? DataPpdbPage()
                                            : (pageState is OnDetailPpdbPage)
                                                ? DetailPpdbPage(pageState.ppdb)
                                                : (pageState is OnSuccessKonfirmasiPpdbPage)
                                                    ? SuccessKonfirmasiPpdbPage(
                                                        pageState.siswa)
                                                    : (pageState is OnViewPdfPpdbPage)
                                                        ? ViewPdfPpdb(
                                                            path:
                                                                pageState.path)
                                                        : (pageState is OnRegistrationPage)
                                                            ? SignUpPage(pageState
                                                                .registrationData)
                                                            : (pageState is OnAccountConfirmationPage)
                                                                ? AccountConfirmationPage(
                                                                    pageState
                                                                        .registrationData)
                                                                : (pageState is OnMyDatappdb)
                                                                    ? MyDataPpdb()
                                                                    : (pageState is OnDataSiswaPage)
                                                                        ? DataSiswaPage()
                                                                        : (pageState is OnPengumumanAdmin)
                                                                            ? PengumumanAdmin()
                                                                            : MainPage());
  }
}
