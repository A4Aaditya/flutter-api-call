import 'package:flutter_api_call/model/user_dob.dart';
import 'package:flutter_api_call/model/user_location.dart';
import 'package:flutter_api_call/model/user_namee.dart';
import 'package:flutter_api_call/model/user_profile.dart';

class User {
  final String email;
  final String phone;
  final UserPicture picture;
  final String gender;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  User({
    required this.email,
    required this.phone,
    required this.picture,
    required this.gender,
    required this.name,
    required this.dob,
    required this.location,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final email = json['email'];
    final phone = json['phone'];
    final gender = json['gender'];

    final picture = UserPicture.fromMap(json['picture']);
    final name = UserName.fromMap(json['name']);
    final dob = UserDob.fromMap(json['dob']);
    final location = UserLocation.fromMap(json['location']);

    return User(
      email: email,
      phone: phone,
      picture: picture,
      gender: gender,
      name: name,
      dob: dob,
      location: location,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }

  String get thumbnail {
    return picture.thumbnail;
  }
}
