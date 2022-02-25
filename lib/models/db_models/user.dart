import 'package:raaz/models/db_models/address.dart';

class User {
  final String firstName;
  final String middleName;
  final String lastName;
  final List<String> followers;
  final List<String> following;
  final Address address;

  User({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.followers,
    required this.following,
    required this.address,
  });

  String get fullName => firstName + middleName + lastName;

  static User fromMap(Map<String, dynamic> map) {
    return User(
      firstName: map['firstname'],
      middleName: map['middlename'],
      lastName: map['lastname'],
      followers: map['followers'],
      following: map['following'],
      address: Address.fromMap(
        map['address'],
      ),
    );
  }
}
