import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class RegisterVisitor extends StatelessWidget {
  const RegisterVisitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit =ToyApp.get(context);
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var mobileController = TextEditingController();
    var countryController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    var formKey = GlobalKey<FormState>();
    return BlocConsumer<ToyApp, ToyAppState>(
      listener: (context, index) {},
      builder: (context, index) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF6D2B70),
            leading: Icon(Icons.arrow_back_ios),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Color(0xFF6D2B70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: SvgPicture.asset(
                            'assets/icon/Component 6 – 2.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 2.0, color: const Color(0xffffffff)),
                          ),
                        ),
                        Text(
                          'انشاء حساب زائر',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.4,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل البريد الاسم';
                            }
                            return null;
                          },
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelText: ' الاسم',
                              hintStyle: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 2.25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF6D2B70),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب اجخل البريد الكتروني';
                            }
                            return null;
                          },
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'البريد الإلكتروني',
                              hintStyle: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 4.25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF6D2B70),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل رقم الجوال ';
                            }
                            return null;
                          },
                          controller: mobileController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'رقم الجول',
                              hintStyle: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 4.25,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF6D2B70),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل الدولة  ';
                            }
                            return null;
                          },
                          controller: countryController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: ' الدولة',
                              hintStyle: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 4.25,
                              ),
                              suffixIcon: SvgPicture.asset(
                                'assets/icon/Icon feather-chevron-down.svg',
                                fit: BoxFit.scaleDown,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Color(0xFF6D2B70),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل كلمةالمرور';
                            }
                            return null;
                          },
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: 'كلمة المرور',
                              hintStyle: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 4.25,
                              ),
                              border: OutlineInputBorder(),
                              prefixIcon:
                                  Icon(Icons.lock, color: Color(0xFF6D2B70))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل كلمةالمرور';
                            }
                            return null;
                          },
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: 'اعادة كلمة المرور',
                              hintStyle: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 4.25,
                              ),
                              border: OutlineInputBorder(),
                              prefixIcon:
                                  Icon(Icons.lock, color: Color(0xFF6D2B70))),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0XFF911D74),
                              minimumSize: (Size(200, 60)),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                cubit.registerUser(name: nameController.text, email: emailController.text, mobile: mobileController.text, password: passwordController.text, country: countryController.text, confirmPassword:confirmPasswordController.text );
                              }
                            },
                            child: Text('دخول',
                                style: TextStyle(
                                  fontFamily: 'DIN Next LT Arabic',
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                  height: 0.9,
                                )))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
