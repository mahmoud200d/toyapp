import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toyapp/api/api_setitngs.dart';
import 'package:toyapp/api/dio_helper.dart';
import 'package:toyapp/cubit/states.dart';
import 'package:toyapp/model/blogs_model.dart';
import 'package:toyapp/model/home_model.dart';
import 'package:toyapp/model/register_model.dart';
import 'package:toyapp/model/update_model.dart';

import '../model/contectus_model.dart';
import '../model/login_model.dart';

class ToyApp extends Cubit<ToyAppState> {
  ToyApp() : super(ToyApInitialState());

  static ToyApp get(context) => BlocProvider.of(context);

  LoginModel loginModel = LoginModel();

  void userLogin(String email, String password) {
    emit(LoadingLoginState());
    DioHelper.postData(
            url: ApiSettings.login,
            data: {'email': email, 'password': password},
            token: '')
        .then((value) {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      emit(SuccessLoginState());
    }).catchError((error) {
      print(error);
      emit(ErrorLoginState());
    });
  }

  RegisterModel registerModel = RegisterModel();

  void registerUser(
      {required String name,
      required String email,
      required String mobile,
      required String password,
      required String country,
      required String confirmPassword}) {
    emit(LoadingRegisterState());
    DioHelper.postData(url: ApiSettings.registerVisitor, data: {
      'name': name,
      'email': email,
      'mobile': mobile,
      'country': country,
      'password': password,
      'confirm_password': confirmPassword,
      'type_mobile': 'android',
      "type": '1'
    }).then((value) {
      print(value.data);
      registerModel = RegisterModel.fromJson(value.data);
      emit(SuccessRegisterState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorRegisterState());
    });
  }

  RegisterModel changePassword = RegisterModel();

  void userChangePassword(
      {required email,
      required String oldPassword,
      required String password,
      required String confirmPassword}) {
    emit(LoadingUserPasswordChangeState());
    DioHelper.postData(
      url: ApiSettings.changePassword,
      token:
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDNlYTNlMDljYWQ0YjkwMjlhODNhMjMxY2ZhMzU3MTgyOGNlNmNkMjQ3NjhjNDMyNGJlOTY0YWM3ODQyZWI4NzdjMTViNmY5YmIyNzhiODYiLCJpYXQiOiIxNjUzNTEwNzI5Ljg5NTk2NyIsIm5iZiI6IjE2NTM1MTA3MjkuODk1OTcwIiwiZXhwIjoiMTY4NTA0NjcyOS44OTI0MTQiLCJzdWIiOiIyMCIsInNjb3BlcyI6W119.grrQZRWxjbSnxtETvFS4lL4y7liuK2pSakVvQ-F6lh5pHm8oa_8wXfDEMf2Y4gTxShILZ4gGZ5UUKCoq7dBd_KPxhayVOQUh-f5pq83eQtUaibtRduylFNOLaGVrMKymfuXo-xntGtbUMuqNp5XYxvRhSg1lFu01qjibWJU6uqKg4crqyYVdKyuSEP8S221-6JAdS4OVgntVVmmj7y7Q5pLKBSfFmP5lcZXkP8omwas5VKKllEW-xfPPmY_Hseb_R6ZGoxVN1gBnrhAFNU5Hf6CcMsZgqShQ1dQdAiyhwjDDzc8Y_Q7xgjhA4h3wWsnQlHeImaE9opNmXhdzjdB3O8Whj3WyTJOQi4zRTpWU0OpT9Av3oufdGWBVegwm0PoFpVXAEQtFSYIB_1643OBkMy7cf_4yAf4Ahw810EBKCffE5czyjVrJ6OXVgAxWiMQ6YB5C0AMQw947ojgpNmhkmooWG2AhEsIDgAq5HMiTbCGIRbtn4DsLE2AQJAmZ2GHYMlZrpSmUxEve0FYmlifZIMQ8AlvnPsa1icH4QUqz84zhzd7Cp3qJnLpvUwACEUp8fl3a_MC5J27klCXT5ArfrRueH1ZgJ_ZE9kVoRc1UiyhPApsfp3Y23vVKD8mylMtaSZym5dmMf8Fu4wMmcHCgP0ulvSdKP7MTLGF02aTr-C8',
      data: {
        'email': email,
        'old_password': oldPassword,
        'password': password,
        'confirm_password': confirmPassword
      },
    ).then((value) {
      print(value.data);
      changePassword = RegisterModel.fromJson(value.data);

      emit(SuccessUserPasswordChangeState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorUserPasswordChangeState());
    });
  }

  HomeModel home = HomeModel();

  void getCategories() {
    emit(LoadingGetCategoriesState());
    DioHelper.getDate(url: ApiSettings.home).then((value) {
      print(value.data);
      home = HomeModel.fromJson(value.data);
      print(home.items!.categores[0].details);
      emit(SuccessGetCategoriesState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetCategoriesState());
    });
  }

  UpdateModel updateModel = UpdateModel();

  void updateUserData(
      String name, String email, String mobileNumber, String token) {
    emit(LoadingUpdateUserDataState());
    DioHelper.putData(
            url: ApiSettings.updateProfile,
            data: {'name': name, 'email': email, 'phone': mobileNumber},
            token: token)
        .then((value) {
      print(value.data);
      updateModel = UpdateModel.fromJson(value.data);
      emit(SuccessUpdateUserDataState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorUpdateUserDataState());
    });
  }

  UpdateModel userProfile = UpdateModel();

  void getUserProfile() {
    emit(LoadingGetUserProfileState());
    DioHelper.getDate(
            url: ApiSettings.profile,
            token:
                'VnL6NpgxAkoB5s4MmIqc9SLB8k0Z4JlC0r11o1FDPsOpvKEQRDZMn6R7oUhxXosxX6BIx5')
        .then((value) {
      print(value.data);
      userProfile = UpdateModel.fromJson(value.data);
      emit(SuccessGetUserProfileState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetUserProfileState());
    });
  }

  UpdateModel logout = UpdateModel();

  void userLogout() {
    emit(LoadingUserLogoutState());
    DioHelper.postData(
        url: ApiSettings.logout,
        token:
            'CR9rlyl83OwDwaiUVKXJbSJXv1IFmhAjdUEe66sJs1gx42q7rr1SejDRmfymMwzcGvOmsf',
        data: {'email': 'mahmoud.kiln300@gmail.com'}).then((value) {
      print(value.data);
      logout = UpdateModel.fromJson(value.data);
      emit(SuccessUserLogoutState());
    }).catchError((error) {
      print(error);
      emit(ErrorUserLogoutState());
    });
  }

  forgotUserPassword({required String email}) {
    emit(LoadingForgotUserPasswordState());
    DioHelper.postData(url: ApiSettings.forgetPassword, data: {'email': email})
        .then((value) {
      print(value.data);
      emit(SuccessForgotUserPasswordState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorForgotUserPasswordState());
    });
  }

  void resetUserPassword(
      {required String email,
      required dynamic code,
      required String password,
      required String passwordConfirmation}) {
    emit(LoadingResetUserPasswordState());
    DioHelper.postData(url: ApiSettings.resetPassword, data: {
      'email': email,
      'code': code,
      'password': password,
      'password_confirmation': passwordConfirmation
    }).then((value) {
      print(value.data);
      emit(SuccessResetUserPasswordState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorResetUserPasswordState());
    });
  }

  BlogsModel blogsModel = BlogsModel();

  void getBlogs() {
    emit(LoadingGetBlogsState());
    DioHelper.getDate(url: ApiSettings.blogs).then((value) {
      print(value.data);

      blogsModel = BlogsModel.fromJson(value.data);

      emit(SuccessGetBlogsState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetBlogsState());
    });
  }

  void getTickets() {
    emit(LoadingGetTicketsState());
    DioHelper.getDate(url: ApiSettings.tickets).then((value) {
      print(value.data);
      emit(SuccessGetTicketsState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetTicketsState());
    });
  }

  void getPages() {
    emit(LoadingGetPagesState());
    DioHelper.getDate(url: ApiSettings.pages).then((value) {
      print(value.data);
      emit(SuccessGetPagesState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetPagesState());
    });
  }

  ContactusModel  contactusModel=ContactusModel();

  void contactUs(
      {required String email,
      required String name,
      required String mobile,
      required dynamic country,
      required String titleMessage,
      required String message}) {
    emit(LoadingContactUsState());
    DioHelper.postData(url: ApiSettings.contactUs, data: {
      'email': email,
      'name': name,
      'mobile': mobile,
      'country': country,
      'titel': titleMessage,
      'message': message
    }).then((value) {
      print(value.data);
      contactusModel = ContactusModel.fromJson(value.data);

      emit(SuccessContactUState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorContactUState());
    });
  }

  void getTravels() {
    emit(LoadingGetTravelsState());

    DioHelper.getDate(url: ApiSettings.travels).then((value) {
      print(value.data);
      emit(SuccessGetTravelsState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetTravelsState());
    });
  }
}
