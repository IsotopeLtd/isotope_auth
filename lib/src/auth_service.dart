import 'dart:async';
import 'package:isotope_auth/src/auth_identity.dart';
import 'package:isotope_auth/src/auth_provider.dart';

abstract class AuthService {
  Future<AuthIdentity> currentIdentity();
  void dispose();
  Stream<AuthIdentity> get onAuthStateChanged;
  AuthProvider get provider;
  void setup();
  Future<AuthIdentity> signIn(Map<String, dynamic> credentials);
  Future<void> signOut();
}
