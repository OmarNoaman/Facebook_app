import 'package:facebook/core/utils/app_colors.dart';
import 'package:facebook/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FacebookElevatedButton extends StatelessWidget {
 final String text;
 final bool isLogin ;
 final VoidCallback? onPressed ;
  const FacebookElevatedButton({super.key, required this.text, this.isLogin = true,this.onPressed});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    double designHeight = 852;
    return ElevatedButton(onPressed: onPressed??(){},style: ElevatedButton.styleFrom(
      backgroundColor: isLogin ? AppColors.blue : AppColors.white,
      minimumSize: Size.fromHeight((50/designHeight)*height),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
        side: BorderSide(color: AppColors.blue)
      )
    ), child: Text(text,style: isLogin ? AppStyles.white16Regular : AppStyles.blue16Regular),);
  }
}
