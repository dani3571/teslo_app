import 'package:teslo_shop/features/auth/domain/entities/User.dart';

abstract class AuthDataSource{
  Future<User> login(String email, String password);
  Future<User> checkAuthStatus(String token);


}