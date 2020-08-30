part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'profilePicture': user.profilePicture ?? "",
      'userLevel': user.userLevel
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();
    return User(id, snapshot.data['email'],
        name: snapshot.data['name'],
        profilePicture: snapshot.data['profilePicture'],
        userLevel: snapshot['userLevel']);
  }
}
