import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class UpdateDataScreen extends StatelessWidget {
  UpdateDataScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = ToyApp.get(context);


    return BlocConsumer<ToyApp, ToyAppState>(
        listener: (context, state) {



        },
        builder: (context, state) {

          nameController.text=cubit.updateModel.data!.name;
          emailController.text=cubit.updateModel.data!.email;
          mobileNumberController.text=cubit.updateModel.data!.phone;

          return cubit.userProfile.data==null?Center(child: CircularProgressIndicator()): Scaffold (

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
                    height: 300,
                    width: double.infinity,
                    color: Color(0xFF6D2B70),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          child: SvgPicture.asset(
                            'assets/icon/Component 6 – 2.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                  style: BorderStyle.solid)),
                        ),
                        Text(
                          'تعديل البيانات الشخصية',
                          style: TextStyle(
                            fontFamily: 'DIN Next LT Arabic',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.4,
                            height: 2.25,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          height: 20,
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
                                Icons.email,
                                color: Color(0xFF6D2B70),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يجب ادخل رقم الجوال ';
                            }
                            return null;
                          },
                          controller: mobileNumberController,
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
                                Icons.phone,
                                color: Color(0xFF6D2B70),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0XFF911D74),
                              minimumSize: (Size(200, 60)),
                            ),
                            onPressed: () {


                                cubit.updateUserData(nameController.text,emailController.text ,mobileNumberController.text ,'VnL6NpgxAkoB5s4MmIqc9SLB8k0Z4JlC0r11o1FDPsOpvKEQRDZMn6R7oUhxXosxX6BIx5');












                            },
                            child: Text('حفظ',
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
          );
        });
  }
}
