import 'package:dio/dio.dart';
import 'package:teslo_shop/config/config.dart';
import 'package:teslo_shop/features/auth/domain/datasources/auth_datasource.dart';
import 'package:teslo_shop/features/auth/domain/entities/User.dart';
import 'package:teslo_shop/features/auth/infrastructure/infrastructure.dart';

class AuthDataSourceImpl extends AuthDataSource{
  final dio = Dio(
    BaseOptions(
      baseUrl: Enviroment.apiUrl
    )
  );


  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) async{
    try{

      final response = await dio.post('/auth/login', data:{
        'email': email,
        'password': password
      } );
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    }catch(e){
        throw WrongCredentials(); // * Exception personalizada
    }
  
  }

}