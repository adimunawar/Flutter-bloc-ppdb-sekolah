part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToPpdbSiswa extends PageEvent {
  final PpdbData ppdbData;
  GoToPpdbSiswa(this.ppdbData);
  @override
  List<Object> get props => [ppdbData];
}

class GoToConfirmationPpdb extends PageEvent {
  final PpdbData ppdbData;
  GoToConfirmationPpdb(this.ppdbData);
  @override
  List<Object> get props => [ppdbData];
}

class GoToSuccessPpdbPage extends PageEvent {
  final Ppdb ppdb;
  GoToSuccessPpdbPage(this.ppdb);
  @override
  List<Object> get props => [ppdb];
}

class GoToKontakPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToDataPpdbPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToDataSiswaPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToPengumumanPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToTentangPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToDetailPpdbPage extends PageEvent {
  final Ppdb ppdb;
  GoToDetailPpdbPage(this.ppdb);
  @override
  List<Object> get props => [ppdb];
}

class GoToSuccessKonfirmasiPpdbPage extends PageEvent {
  final Siswa siswa;
  GoToSuccessKonfirmasiPpdbPage(this.siswa);
  @override
  List<Object> get props => [siswa];
}

class GoToViewPdfPpdbPage extends PageEvent {
  final String path;
  GoToViewPdfPpdbPage({this.path});
  @override
  List<Object> get props => [path];
}

class GoToRegistrationPage extends PageEvent {
  final RegistrationData registrationData;
  GoToRegistrationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;
  GoToAccountConfirmationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToMyDatappdb extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToPengumumanAdmin extends PageEvent {
  @override
  List<Object> get props => [];
}
