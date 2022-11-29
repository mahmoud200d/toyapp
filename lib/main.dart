import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:toyapp/cubit/cubit.dart';
import 'package:toyapp/screen/auth/change_password.dart';
import 'package:toyapp/screen/contact_us_screen.dart';

import 'package:toyapp/screen/auth/forget_password_screen.dart';
import 'package:toyapp/screen/auth/login_screen.dart';
import 'package:toyapp/screen/blogs_screen.dart';
import 'package:toyapp/screen/choess_package_screen.dart';
import 'package:toyapp/screen/details_screen.dart';
import 'package:toyapp/screen/home_screen.dart';
import 'package:toyapp/screen/organizer_screen.dart';
import 'package:toyapp/screen/personal_datals.dart';
import 'package:toyapp/screen/reserve%20_space_screen.dart';
import 'package:toyapp/screen/space_reservation_information.dart';
import 'package:toyapp/screen/tickets_screen.dart';

import 'api/dio_helper.dart';
import 'cubit/compents.dart';
import 'cubit/states.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ToyApp()..getTravels(),
      child: BlocConsumer<ToyApp, ToyAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(

            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [Locale("ar", "AE")],
            locale: Locale("ar", "AE"),
            home:HomeScreen(),
          );
        },
      ),
    );
  }
}
