part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final String userLevel;

  User(this.id, this.email, {this.name, this.profilePicture, this.userLevel});
  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  User copywith({String name, String profilePicture, String userLevel}) =>
      User(this.id, this.email,
          name: name ?? this.name,
          profilePicture: profilePicture ?? this.profilePicture,
          userLevel: userLevel ?? this.userLevel);
  @override
  @override
  List<Object> get props => [id, email, name, profilePicture, userLevel];
}
