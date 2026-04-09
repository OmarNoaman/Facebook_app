import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget{
  final String imageName;
  final bool isSvg;
  final double paddingLeft;
  final double paddingRight;
  const CustomIcon({super.key, required this.imageName,this.isSvg = true , this.paddingLeft = 0,  this.paddingRight=0});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double designWidth = 393;
    return IconButton(onPressed:(){},icon: isSvg ? SvgPicture.asset(imageName):Image.asset(imageName),padding: EdgeInsets.only(right: (paddingRight/designWidth)*width,left: (paddingLeft/designWidth)*width),style:IconButton.styleFrom(tapTargetSize: MaterialTapTargetSize.shrinkWrap,));
  }

}