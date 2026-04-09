import 'package:facebook/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';

typedef Validator = String? Function(String?);

class FacebookTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final String hintText;
  final Validator validator;

  const FacebookTextFormField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.isPassword = false,
    required this.validator,
  });

  @override
  State<FacebookTextFormField> createState() => _FacebookTextFormFieldState();
}

class _FacebookTextFormFieldState extends State<FacebookTextFormField> {
  bool passwordIsVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: widget.isPassword? passwordIsVisible : false,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        fillColor: AppColors.textBg,
        filled: true,
        hintText: widget.hintText,
        hintStyle: AppStyles.grey16Regular,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    passwordIsVisible = !passwordIsVisible;
                  });
                },
                icon: Icon(
                  passwordIsVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.grey,
                ),
              )
            : SizedBox(),
        errorBorder: buildBorder(color: AppColors.red,thickness: 2),
        border: buildBorder(color: AppColors.grey,thickness: 1),
        focusedBorder: buildBorder(color: AppColors.grey,thickness: 2),
      ),
      style: AppStyles.grey16Regular,
    );
  }
  OutlineInputBorder buildBorder({required Color color, required double thickness}){
    var width = MediaQuery.of(context).size.width;
    double designWidth = 393;
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: thickness),
      gapPadding: (16/designWidth)*width,
    );
  }
}
