import 'package:teslo_shop/features/auth/domain/entities/User.dart';

abstract class AuthRepository{
  Future<User> login(String email, String password);
  Future<User> checkAuthStatus(String token);

}