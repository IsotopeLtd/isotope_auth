import 'dart:async';
import 'package:isotope_auth/src/auth_identity.dart';
import 'package:isotope_auth/src/auth_status.dart';
import 'package:isotope_auth/src/auth_strategy.dart';

abstract class AuthService {
  Future<AuthIdentity> currentIdentity();
  void dispose();
  Stream<AuthIdentity> get onAuthStateChanged;
  void setup();
  Future<AuthIdentity> signIn(Map<String, dynamic> credentials);
  void signInCallback();
  Future<void> signOut();
  void signOutCallback();
  AuthStatus status;
  AuthStrategy strategy;
}
