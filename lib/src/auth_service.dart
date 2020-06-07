import 'dart:async';
import 'package:isotope_auth/src/auth_provider.dart';
import 'package:isotope_auth/src/isotope_identity.dart';

abstract class AuthService {
  Future<IsotopeIdentity> currentIdentity();
  void dispose();
  Stream<IsotopeIdentity> get onAuthStateChanged;
  AuthProvider get provider;
  void setup();
  Future<IsotopeIdentity> signIn(Map<String, dynamic> credentials);
  Future<void> signOut();
}
