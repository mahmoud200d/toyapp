import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class RestPasswordScreen extends StatelessWidget {
   String email;
   RestPasswordScreen({Key? key,required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    late String code;
    var  cubit=ToyApp.get(context);

    var passwordTextController = TextEditingController();
    var passwordConfirmationTextController = TextEditingController();
    TextEditingController firstCodeTextController = TextEditingController();
    TextEditingController secondCodeTextController = TextEditingController();
    TextEditingController thirdCodeTextController = TextEditingController();
    TextEditingController fourthCodeTextController = TextEditingController();

    late FocusNode firstFocusNode = FocusNode();
    late FocusNode secondFocusNode = FocusNode();
    late FocusNode thirdFocusNode = FocusNode();
    late FocusNode fourthFocusNode = FocusNode();

    return BlocConsumer<ToyApp, ToyAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF6D2B70),
              title: Text(
                'إعادة تعيين كلمة المرور',
                style: GoogleFonts.cairo(),
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Text(
                  'إعادة تعيين كلمة المرور',
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'أدخل الرمز وكلمة المرور الجديدة',
                  style: GoogleFonts.cairo(
                    fontSize: 14,
                    height: 1.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يجب ادخل الرقم الاول';
                          }
                        },
                        controller: firstCodeTextController,
                        focusNode: firstFocusNode,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLength: 1,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            secondFocusNode.requestFocus();
                          }
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: false,
                          decimal: false,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يجب ادخل الرقم الثاني';
                          }
                        },
                        controller: secondCodeTextController,
                        focusNode: secondFocusNode,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLength: 1,
                        onChanged: (value) {
                          value.isNotEmpty
                              ? thirdFocusNode.requestFocus()
                              : firstFocusNode.requestFocus();
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: false,
                          decimal: false,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يجب ادخل الرقم الثالث';
                          }
                        },
                        controller: thirdCodeTextController,
                        focusNode: thirdFocusNode,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLength: 1,
                        onChanged: (value) {
                          value.isNotEmpty
                              ? fourthFocusNode.requestFocus()
                              : secondFocusNode.requestFocus();
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: false,
                          decimal: false,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يجب ادخل الرقم الرابع';
                          }
                        },
                        controller: fourthCodeTextController,
                        focusNode: fourthFocusNode,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLength: 1,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            thirdFocusNode.requestFocus();
                          }
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: false,
                          decimal: false,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب ادخل كلمة المرور الجدبدة';
                    }
                    return null;
                  },
                  controller: passwordTextController,
                  obscureText: true,
                  style: GoogleFonts.cairo(),
                  decoration: const InputDecoration(
                    hintText: '  كلمة المرور الجديدة',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF6D2B70),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب  اعادة كلمة المرور الجدبدة';
                    }
                    return null;
                  },
                  controller: passwordConfirmationTextController,
                  style: GoogleFonts.cairo(),
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: ' اعادةكلمة المرور الجديدة',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF6D2B70),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    {
                      code=firstCodeTextController.text+secondCodeTextController.text+thirdCodeTextController.text+fourthCodeTextController.text;
                        print(code);
                      if (formKey.currentState!.validate()) {
                        cubit.resetUserPassword(email: email, code: code, password: passwordTextController.text, passwordConfirmation: passwordConfirmationTextController.text);

                      }
                    }
                  },
                  child: Text(
                    'إعادة تعيين كلمة المرور',
                    style: GoogleFonts.cairo(),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(0, 50),
                      primary: Color(0xFF6D2B70)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
