import 'package:facebook/ui/screens/home_screen.dart';
import 'package:facebook/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';


void main(){
  runApp(
      Facebook()
  );
}
class Facebook extends StatelessWidget {
  const Facebook({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: AppColors.white,
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: AppColors.transparent,
        cursorColor: AppColors.grey,
        selectionColor:AppColors.lightGrey,
      )
    ),
    initialRoute:LoginScreen.routeName ,
      routes:{
        HomeScreen.routeName : (context) => const HomeScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      } ,
);
  }
}
