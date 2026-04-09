import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static const TextStyle white16Regular = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.white);
  static const TextStyle blue16Regular = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.blue);
  static const TextStyle grey16Medium = TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.grey);
  static const TextStyle grey12Medium = TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.grey);
  static const TextStyle grey16Regular = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.grey);
  static const TextStyle black16SemiBold = TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.black);
  static const TextStyle black16Medium = TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.black);

}