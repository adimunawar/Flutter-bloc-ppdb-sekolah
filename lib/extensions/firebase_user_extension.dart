part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser {
  User convertToUser({String name = "no name", String userLevel = "user"}) =>
      User(this.uid, this.email, name: name, userLevel: userLevel);

  Future<User> fromFireStore() async => await UserServices.getUser(uid);
}
