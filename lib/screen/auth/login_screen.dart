

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';
import 'package:toyapp/screen/splash_screen.dart';

import 'change_password.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  TextEditingController  email = TextEditingController();

  var passwordController = TextEditingController();
   var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubit =ToyApp.get(context);
    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context,state){},
      builder:(context,state){
        return  Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF6D2B70),
            leading: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          body: Form(
            key:formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 250,
                    width: double.infinity,
                    color: Color(0xFF6D2B70),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/icon/logo.svg',
                        ),
                        Text(
                          'معرض الرياض',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 25,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.22499999999999998,
                            fontWeight: FontWeight.w700,
                            height: 1.32,
                          ),
                        ),
                        Text(
                          'لألعــــــــاب الأطفــــــــــــال',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 18,
                            color: const Color(0xffd4d4d4),
                            letterSpacing: 0.16199999999999998,
                            height: 1.611111111111111,
                          ),

                        )
                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تسجيل دخول',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 20,
                            color: const Color(0xff6d2b70),
                            letterSpacing: 0.28571428298950197,
                            fontWeight: FontWeight.w500,
                            height: 3.25,
                          ),

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
                                hintStyle: TextStyle(fontFamily: 'DIN Next LT Arabic',
                                  fontSize: 20,
                                  color: const Color(0xff000000),
                                  letterSpacing: 0.28571428298950197,
                                  height: 4.25,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(Icons.person,color: Color(0xFF6D2B70),)),
                          ),
                        SizedBox(height: 15),
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
                              hintStyle: TextStyle(fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 4.25,
                              ),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock,color: Color(0xFF6D2B70))),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(width: 1.0, color: const Color(0xfff0f0f0)),
                                ),
                                child: SvgPicture.asset('assets/icon/Icon material-done.svg')),
                            SizedBox(width: 10,),
                            Text(
                              'تذكرني',
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff000000),
                                letterSpacing: 0.28571428298950197,
                                height: 2.25,
                              ),

                            ),
                            SizedBox(height:20,),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6D2B70),
                                minimumSize: (Size(200, 60)),
                              ),
                              onPressed: (){

                                 if(formKey.currentState!.validate()){
                                   cubit.userLogin(emailController.text,passwordController.text);



                                 }

                                 if(cubit.loginModel.status){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                                 }


                              }, child:Text('دخول',style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            height: 0.9,
                          ))),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                           child:Text( 'نسيت كلمة المرور؟',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 20,
                              color: const Color(0xff646464),
                              letterSpacing: 0.28571428298950197,
                              height: 2.25,
                            )), onPressed: () {

                             showModalBottomSheet(context: context, builder: (context){
                               return Container(
                                 height: 300,
                                 padding: EdgeInsets.symmetric(horizontal: 40),
                                 decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                                 color: Colors.white

                                 ),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [

                                     TextFormField(
                                       validator: (value) {
                                         if (value!.isEmpty) {
                                           return 'يجب اجخل البريد الكتروني';
                                         }
                                         return null;
                                       },
                                       controller: email,
                                       keyboardType: TextInputType.emailAddress,
                                       decoration: InputDecoration(
                                           labelText: 'البريد الإلكتروني',
                                           hintStyle: TextStyle(fontFamily: 'DIN Next LT Arabic',
                                             fontSize: 20,
                                             color: const Color(0xff000000),
                                             letterSpacing: 0.28571428298950197,
                                             height: 4.25,
                                           ),
                                           border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(8),
                                           ),
                                           prefixIcon: Icon(Icons.person,color: Color(0xFF6D2B70),)),
                                     ),
                                     SizedBox(height: 15,),

                                     ElevatedButton(
                                         style: ElevatedButton.styleFrom(
                                           primary: Color(0XFF911D74),
                                           minimumSize: (Size(200, 60)),

                                         ),
                                         onPressed: () {
                                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword(email: email.text)));

                                         },
                                         child: Text('ارسال',
                                             style: TextStyle(
                                               fontFamily: 'DIN Next LT Arabic',
                                               fontSize: 20,
                                               color: const Color(0xffffffff),
                                               fontWeight: FontWeight.w500,
                                               height: 0.9,
                                             )))

                                   ],
                                 ),
                               );
                             });



                          },


                        )),
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.center,
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontFamily: 'DIN Next LT Arabic',
                                fontSize: 20,
                                color: const Color(0xff949494),
                                letterSpacing: 0.28571428298950197,
                                height: 1.25,
                              ),
                              children: [
                                TextSpan(
                                  text: 'ليس لديك حساب ؟',
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: 'انشاء حساب ',
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                        )
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

