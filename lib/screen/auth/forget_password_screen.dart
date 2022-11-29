import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';
import 'package:toyapp/screen/auth/reset_password_screen.dart';

class ForgetPasswordScreen  extends StatelessWidget {
   ForgetPasswordScreen ({Key? key}) : super(key: key);
  var emailTextController=TextEditingController();
   var formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
   var  cubit=ToyApp.get(context);
    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context,index){},
      builder: (context,index){
       return Scaffold(
          backgroundColor: Colors.white,
          appBar:  AppBar(
              elevation: 0,
              backgroundColor: Color(0xFF6D2B70),
              leading: Icon(Icons.arrow_back_ios),
              title: Text(
                'السفر والفنادق',
                style: TextStyle(
                  fontFamily: 'DIN Next LT Arabic',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.4,
                  height: 1.25,
                ),
              )),
          body: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Text(
                  ' نسيت كلمة السر ',
                  style: GoogleFonts.nunito(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'أدخل البريد الإلكتروني لتلقي رمز إعادة التعيين',
                  style: GoogleFonts.nunito(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                    height: 1,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'يجب اجخل البريد الكتروني';
                    }
                    return null;
                  },

                  controller: emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email,color: Color(0xFF6D2B70)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0.8,
                        ),
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:  Color(0xFF6D2B70),
                    minimumSize: Size(0, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      cubit.forgotUserPassword(email: emailTextController.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RestPasswordScreen(email:emailTextController.text)));

                    }

                  },
                  child: Text('SEND'),
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}
