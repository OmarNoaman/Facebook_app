import 'package:facebook/core/utils/app_styles.dart';
import 'package:facebook/core/utils/app_validators.dart';
import 'package:facebook/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_assets.dart';
import '../widgets/facebook_elevated_button.dart';
import '../widgets/facebook_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'loginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    double designWidth = 393;
    double designHeight = 852;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: (74/designHeight)*height,
              left: (20/designWidth)*width,
              right: (20/designWidth)*width,
              bottom: MediaQuery.of(context).viewInsets.bottom + (36/designHeight)*height,
            ),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                spacing: (24/designWidth)*width,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: (38/designHeight)*height),
                    child: SvgPicture.asset(AppSvg.facebookMainLogo),
                  ),
                  FacebookTextFormField(
                    textEditingController: emailController,
                    hintText: 'Mobile Number or Email Address',
                    validator: AppValidators.emailValidator,
                  ),
                  FacebookTextFormField(
                    textEditingController: passwordController,
                    hintText: 'Password',
                    isPassword: true,
                    validator: AppValidators.passwordValidator,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: FacebookElevatedButton(
                      text: 'Login',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(
                            context,
                          ).pushReplacementNamed(HomeScreen.routeName);
                        }
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgotten Password ?',
                      style: AppStyles.grey16Medium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (106/designHeight)*height),
                    child: FacebookElevatedButton(
                      text: 'Create Account',
                      isLogin: false,
                    ),
                  ),
                  SvgPicture.asset(AppSvg.facebookMainMetaLogo),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
