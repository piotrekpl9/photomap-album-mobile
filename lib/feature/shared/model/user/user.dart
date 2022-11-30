import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String username;
  final String password;
  final bool isActive;
  final DateTime createdAt;

  const User(
      {required this.id,
      required this.username,
      required this.password,
      required this.isActive,
      required this.createdAt});

  @override
  List<Object?> get props => [id, username, password, isActive, createdAt];
}
