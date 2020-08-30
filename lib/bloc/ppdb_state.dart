part of 'ppdb_bloc.dart';

abstract class PpdbState extends Equatable {
  const PpdbState();
}

class PpdbInitial extends PpdbState {
  @override
  List<Object> get props => [];
}

class PpdbLoaded extends PpdbState {
  final List<Ppdb> ppdbs;
  PpdbLoaded(this.ppdbs);
  @override
  List<Object> get props => [ppdbs];
}

class GetDetailPpdb extends PpdbState {
  final Ppdb ppdb;
  GetDetailPpdb(this.ppdb);

  @override
  List<Object> get props => [ppdb];
}
