part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRegistrationPage extends PageState {
  final RegistrationData registrationData;
  OnRegistrationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnKontakPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnPengumumanPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnDataPpdbPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnDataSiswaPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnTentangPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnPpdbSIswa extends PageState {
  final PpdbData ppdbData;
  OnPpdbSIswa(this.ppdbData);
  @override
  List<Object> get props => [ppdbData];
}

class OnConfirmationPpdb extends PageState {
  final PpdbData ppdbData;
  OnConfirmationPpdb(this.ppdbData);
  @override
  List<Object> get props => [ppdbData];
}

class OnSuccessPpdbPage extends PageState {
  final Ppdb ppdb;
  OnSuccessPpdbPage(this.ppdb);
  @override
  List<Object> get props => [ppdb];
}

class OnDetailPpdbPage extends PageState {
  final Ppdb ppdb;
  OnDetailPpdbPage(this.ppdb);
  @override
  List<Object> get props => [ppdb];
}

class OnSuccessKonfirmasiPpdbPage extends PageState {
  final Siswa siswa;
  OnSuccessKonfirmasiPpdbPage(this.siswa);
  @override
  List<Object> get props => [siswa];
}

class OnViewPdfPpdbPage extends PageState {
  final String path;
  OnViewPdfPpdbPage({this.path});
  @override
  List<Object> get props => [path];
}

class OnAccountConfirmationPage extends PageState {
  final RegistrationData registrationData;
  OnAccountConfirmationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnMyDatappdb extends PageState {
  @override
  List<Object> get props => [];
}

class OnPengumumanAdmin extends PageState {
  @override
  List<Object> get props => [];
}
