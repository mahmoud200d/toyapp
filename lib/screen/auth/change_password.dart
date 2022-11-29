import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class ChangePassword extends StatelessWidget {
 String email;
  ChangePassword ({Key? key,required this.email}) : super(key: key);

  var oldPasswordController = TextEditingController();
  var passwordController  = TextEditingController();
  var confirmPasswordController  = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var cubit =ToyApp.get(context);
    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF6D2B70),
            leading: Icon(Icons.arrow_back_ios),
          ),
          body: Form(
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
                        width: double.infinity,
                        height: 300,
                        color: Color(0xFF6D2B70),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              child: Icon(
                                Icons.lock,
                                size: 48,
                                color: Colors.white,
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يجب ادخل كلمة المرور القديمة';
                          }
                          return null;
                        },
                        controller: oldPasswordController ,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: ' كلمة المرور القديمة',
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
                            return 'يجب ادخل كلنة المرور الجديدة ';
                          }
                          return null;
                        },
                        controller: passwordController ,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'يجب ادخل كلنة المرور الجديدة',
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
                            return 'اعادة كلمة المرور الجديدة';
                          }
                          return null;
                        },
                        controller: confirmPasswordController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'اعادة كلمة المرور الجديدة',
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
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0XFF911D74),
                            minimumSize: (Size(200, 60)),
                          ),
                          onPressed: () {



                           cubit.userChangePassword(email: email, oldPassword: oldPasswordController.text, password: passwordController.text, confirmPassword: confirmPasswordController.text);



                          },
                          child: Text('تغير',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                                height: 0.9,
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
