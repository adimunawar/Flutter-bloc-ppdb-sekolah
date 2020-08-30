part of 'ppdb_bloc.dart';

abstract class PpdbEvent extends Equatable {
  const PpdbEvent();
}

class GetAllPpdb extends PpdbEvent {
  @override
  List<Object> get props => [];
}

class DeletePppdb extends PpdbEvent {
  final String id;
  DeletePppdb(this.id);

  @override
  List<Object> get props => [id];
}

class DetailPpdb extends PpdbEvent {
  final String id;
  DetailPpdb(this.id);
  @override
  List<Object> get props => [id];
}
