import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class ContactusScreen extends StatelessWidget {
  ContactusScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var mobileController = TextEditingController();
  var countryController = TextEditingController();
  var titleMessageController = TextEditingController();
  var messageController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   var cubit=ToyApp.get(context);
    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context,state){},
      builder: (context,state){
       return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFF6D2B70),
            elevation: 0,
            title: Icon(Icons.arrow_forward_ios),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'بيانات التواصل',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff911d74),
                        height: 1.4,
                      ),
                    ),
                  ),
                  Text(
                    'نعمل على راحتكم على مدار الساعه مع فريق دعم فني مميز لتسهيل جميع طلباتكم ومتابعه مراسلاتكم والرد باسرع وقت ممكن ويمكنك ايضا التواصل مع مدراء المبيعات لطلب التسيجل او الاستفسار وتسهيل التعاون معكم وتوفير جميع الخدمات باسلوب مميز وراقي ',
                    style: TextStyle(
                      fontFamily: 'DIN Next LT Arabic',
                      fontSize: 16,
                      color: const Color(0xff000000),
                      letterSpacing: 0.32,
                      height: 1.5625,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xFF911D74),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+966123456789',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 18,
                          color: const Color(0xff646464),
                          letterSpacing: 0.28571428298950197,
                          height: 1.25,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xFF911D74),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+966123456789',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 18,
                          color: const Color(0xff646464),
                          letterSpacing: 0.28571428298950197,
                          height: 1.25,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Color(0xFF911D74),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Mail@Website.com',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 15,
                          color: const Color(0xff646464),
                          letterSpacing: 0.28571428298950197,
                          height: 1.25,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF911D74),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'السعودية - الرياض - ارض المعارض',
                        style: TextStyle(
                          fontFamily: 'DIN Next LT Arabic',
                          fontSize: 20,
                          color: const Color(0xff646464),
                          letterSpacing: 0.28571428298950197,
                          height: 1.25,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color: const Color(0xff911d74)),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 1030.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color: const Color(0xff911d74)),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 1029.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color: const Color(0xff911d74)),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 18.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1, color: const Color(0xff911d74)),
                              ),
                              child: SvgPicture.asset(
                                'assets/icon/Group 1027.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'راسلنا',
                      style: TextStyle(
                        fontFamily: 'DIN Next LT Arabic',
                        fontSize: 20,
                        color: const Color(0xff911d74),
                        height: 3,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                              return 'يجب ادخل عنوان الرسالة ';
                            }
                            return null;
                          },
                          controller: titleMessageController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: ' عنوان الرسالة',
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
                        SizedBox(height: 15,),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل الرسالة ';
                            }
                            return null;
                          },
                          controller: messageController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              labelText: ' الرسالة',
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
                        SizedBox(height: 20,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:  Color(0xff911D74),
                            minimumSize: Size(200,50 ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              cubit.contactUs(email: emailController.text, name: nameController.text, mobile: mobileController.text, country: countryController.text, titleMessage: titleMessageController.text, message: messageController.text);


                              }

                            if(cubit.contactusModel.status!){
                              Fluttertoast.showToast(
                                  msg: cubit.contactusModel.message!,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );

                            }else{
                              Fluttertoast.showToast(
                                  msg: cubit.contactusModel.message!,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );

                            }


                            },



                          child:Text(
                            'ارسال',
                            style: TextStyle(
                              fontFamily: 'DIN Next LT Arabic',
                              fontSize: 20,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            softWrap: false,
                          ),
                        ),

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
