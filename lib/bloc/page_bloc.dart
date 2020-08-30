import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:sekolah/bloc/bloc.dart';
// import 'package:sekolah/bloc/bloc.dart';
import 'package:sekolah/models/models.dart';
part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => OnInitialPage();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToLoginPage) {
      yield OnLoginPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToPpdbSiswa) {
      yield OnPpdbSIswa(event.ppdbData);
    } else if (event is GoToConfirmationPpdb) {
      yield OnConfirmationPpdb(event.ppdbData);
    } else if (event is GoToSuccessPpdbPage) {
      yield OnSuccessPpdbPage(event.ppdb);
    } else if (event is GoToTentangPage) {
      yield OnTentangPage();
    } else if (event is GoToPengumumanPage) {
      yield OnPengumumanPage();
    } else if (event is GoToKontakPage) {
      yield OnKontakPage();
    } else if (event is GoToDataPpdbPage) {
      yield OnDataPpdbPage();
    } else if (event is GoToDetailPpdbPage) {
      yield OnDetailPpdbPage(event.ppdb);
    } else if (event is GoToSuccessKonfirmasiPpdbPage) {
      yield OnSuccessKonfirmasiPpdbPage(event.siswa);
    } else if (event is GoToViewPdfPpdbPage) {
      yield OnViewPdfPpdbPage(path: event.path);
    } else if (event is GoToRegistrationPage) {
      yield OnRegistrationPage(event.registrationData);
    } else if (event is GoToAccountConfirmationPage) {
      yield OnAccountConfirmationPage(event.registrationData);
    } else if (event is GoToMyDatappdb) {
      yield OnMyDatappdb();
    } else if (event is GoToDataSiswaPage) {
      yield OnDataSiswaPage();
    } else if (event is GoToPengumumanAdmin) {
      yield OnPengumumanAdmin();
    }
  }
}
