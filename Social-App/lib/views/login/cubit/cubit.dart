import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connect/views/login/cubit/states.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  // void userLogin({
  //   required String email,
  //   required String password,
  // })
  // {
  //   emit(LoginLoadingState());
  //
  //   DioHelper.postData(
  //     url: LOGIN,
  //     data:
  //     {
  //       'email': email,
  //       'password': password,
  //     },
  //   ).then((value)
  //   {
  //     print(value.data);
  //     loginModel = LoginModel.fromJson(value.data);
  //     emit(LoginSuccessState(loginModel));
  //   }).catchError((error)
  //   {
  //     print(error.toString());
  //     emit(LoginErrorState(error.toString()));
  //   });
  // }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined ;

    emit(ChangePasswordVisibilityState());
  }
}