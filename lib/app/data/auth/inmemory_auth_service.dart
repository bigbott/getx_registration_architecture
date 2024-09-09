import 'package:getx_registration_architecture/app/data/auth/auth_service.dart';

class InMemoryAuthService implements AuthService {
  InMemoryAuthService._();
  static final _instance = InMemoryAuthService._();
  factory InMemoryAuthService() {
    return _instance;
  }

  final List<User> users = [];
  @override
  void signUp(String email, String password) {
    users.add(User(email: email, password: password));
  }

  @override
  void signUpApple() {
    users.add(User.fromProvider(token: 'apple token'));
  }

  @override
  void signUpFb() {
    users.add(User.fromProvider(token: 'fb token'));
  }

  @override
  void signUpGoogle() {
    users.add(User.fromProvider(token: 'google token'));
  }
}

class User {
  String email = '';
  String password = '';
  String token = '';

  User({required this.email, required this.password, this.token = ''});

  User.fromProvider({this.email = '', this.password = '', required this.token});
}
