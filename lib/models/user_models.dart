import 'dart:convert';

class UserModel {
  final String name;
  final String email;
  final String profilePic;
  final String uid;
  final String token;
  UserModel({
    required this.name,
    required this.email,
    required this.profilePic,
    required this.uid,
    required this.token,
  });
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'profilePic': profilePic,
      'uid': uid,
      'token': token,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'] ?? '',
        email: map['email'] ?? '',
        profilePic: map['profilePic'] ?? '',
        uid: map['_id'] ?? '',
        token: map['token'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
  UserModel copyWith({
    String? email,
    String? name,
    String? profilePic,
    String? uid,
    String? token,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      profilePic: profilePic ?? this.profilePic,
      uid: uid ?? this.uid,
      token: token ?? this.token,
    );
  }
}
