import 'dart:async';
import 'package:isotope_auth/src/auth_provider.dart';
import 'package:isotope_auth/src/auth_service.dart';
import 'package:isotope_auth/src/isotope_identity.dart';

class AuthServiceAdapter implements AuthService {
  final StreamController<IsotopeIdentity> authStateChangedController = StreamController<IsotopeIdentity>.broadcast();
  StreamSubscription<IsotopeIdentity> authStateSubscription;

  @override
  void dispose() {
    authStateSubscription?.cancel();
    authStateChangedController?.close();
  }

  @override
  void setup() {
    authStateSubscription = onAuthStateChanged.listen((IsotopeIdentity identity) {
      authStateChangedController.add(identity);
    }, onError: (dynamic error) {
      authStateChangedController.addError(error);
    });
  }

  @override
  AuthProvider get provider => throw UnimplementedError();

  @override
  Future<IsotopeIdentity> currentIdentity() {
    throw UnimplementedError();
  }

  @override
  Stream<IsotopeIdentity> get onAuthStateChanged => throw UnimplementedError();

  @override
  Future<IsotopeIdentity> signIn(Map<String, dynamic> credentials) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() => throw UnimplementedError();
}
