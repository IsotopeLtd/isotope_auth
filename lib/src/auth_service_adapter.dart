import 'dart:async';
import 'package:isotope_auth/src/auth_identity.dart';
import 'package:isotope_auth/src/auth_service.dart';
import 'package:isotope_auth/src/auth_status.dart';
import 'package:isotope_auth/src/auth_strategy.dart';

class AuthServiceAdapter implements AuthService {
  final StreamController<AuthIdentity> authStateChangedController = StreamController<AuthIdentity>.broadcast();
  StreamSubscription<AuthIdentity> authStateSubscription;

  @override
  void dispose() {
    authStateSubscription?.cancel();
    authStateChangedController?.close();
  }

  @override
  void setup() {
    status = AuthStatus.Undetermined;
    authStateSubscription = onAuthStateChanged.listen((AuthIdentity identity) {
      authStateChangedController.add(identity);
    }, onError: (dynamic error) {
      authStateChangedController.addError(error);
    });
  }

  @override
  Future<AuthIdentity> currentIdentity() => throw UnimplementedError();

  @override
  Stream<AuthIdentity> get onAuthStateChanged => throw UnimplementedError();

  @override
  Future<AuthIdentity> signIn(Map<String, dynamic> credentials) => throw UnimplementedError();

  @override
  Future<void> signOut() => throw UnimplementedError();

  @override
  AuthStrategy get strategy => throw UnimplementedError();

  @override
  AuthStatus status;

  @override
  set strategy(AuthStrategy _strategy) {
    strategy = _strategy;
  }
}
