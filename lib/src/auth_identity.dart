import 'package:meta/meta.dart';

@immutable
class AuthIdentity {
  const AuthIdentity({
    @required this.uid,
    this.email,
    this.photoUrl,
    this.displayName,
  });

  final String uid;
  final String email;
  final String photoUrl;
  final String displayName;
}
