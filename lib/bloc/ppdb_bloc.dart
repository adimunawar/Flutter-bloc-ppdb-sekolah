import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:sekolah/bloc/bloc.dart';
import 'package:sekolah/models/models.dart';
import 'package:sekolah/services/services.dart';

part 'ppdb_event.dart';
part 'ppdb_state.dart';

class PpdbBloc extends Bloc<PpdbEvent, PpdbState> {
  @override
  PpdbState get initialState => PpdbInitial();

  @override
  Stream<PpdbState> mapEventToState(
    PpdbEvent event,
  ) async* {
    if (event is GetAllPpdb) {
      List<Ppdb> ppdb = await PpdbServices.getAllPpdb();

      yield PpdbLoaded(ppdb);
    } else if (event is DetailPpdb) {
      Ppdb ppdb = await PpdbServices.getDetailPpdb(event.id);
      yield GetDetailPpdb(ppdb);
    }
    // else if(event is DeletePppdb){
    //   if (state is PpdbLoaded){
    //     try{

    //       await PpdbServices.deletePpdb(event.id);
    //       yield PpdbLoaded(ppdbs)
    //     }catch (e){
    //       print(e);
    //     }
    //   }
    // }
  }
}
