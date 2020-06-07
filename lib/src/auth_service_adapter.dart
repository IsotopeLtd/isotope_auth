import 'dart:async';
import 'package:isotope_auth/src/auth_identity.dart';
import 'package:isotope_auth/src/auth_provider.dart';
import 'package:isotope_auth/src/auth_service.dart';

class AuthServiceAdapter implements AuthService {
  final StreamController<AuthIdentity> authStateChangedController = StreamController<AuthIdentity>.broadcast();
  StreamSubscription<AuthIdentity> authIdentitySubscription;

  @override
  void dispose() {
    authIdentitySubscription?.cancel();
  }

  @override
  void setup() {
    authIdentitySubscription = onAuthStateChanged.listen((AuthIdentity identity) {
      authStateChangedController.add(identity);
    }, onError: (dynamic error) {
      authStateChangedController.addError(error);
    });
  }

  @override
  AuthProvider get provider => throw UnimplementedError();

  @override
  Future<AuthIdentity> currentIdentity() {
    throw UnimplementedError();
  }

  @override
  Stream<AuthIdentity> get onAuthStateChanged => throw UnimplementedError();

  @override
  Future<AuthIdentity> signIn(Map<String, dynamic> credentials) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() => throw UnimplementedError();
}
