

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/cubit/states.dart';

class LogoutScree extends StatelessWidget {
  const LogoutScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=ToyApp.get(context);
    return BlocConsumer<ToyApp,ToyAppState>(
      listener: (context,index){},
      builder: (context,index){
        return   Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF6D2B70),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF6D2B70),
                  minimumSize:Size(150, 50),
                ),
                onPressed:(){
                  cubit.userLogout();

                } ,child: Text('Logout'),),)
            ],
          ),
        );
      },
    );
  }
}
