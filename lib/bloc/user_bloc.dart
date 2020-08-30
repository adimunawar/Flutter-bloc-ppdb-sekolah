import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sekolah/models/models.dart';
import 'package:sekolah/services/services.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  @override
  UserState get initialState => UserInitial();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      User user = await UserServices.getUser(event.id);
      yield UserLoaded(user);
    } else if (event is SignOut) {
      yield UserInitial();
    } else if (event is UpdateData) {
      User updateUser = (state as UserLoaded)
          .user
          .copywith(name: event.name, profilePicture: event.profileImage);
      await UserServices.updateUser(updateUser);
      yield UserLoaded(updateUser);
    }
  }
}
