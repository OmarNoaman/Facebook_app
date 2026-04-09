import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    double designWidth = 393;
    double designHeight = 852;
    return SizedBox(
      height: (210 / designHeight) * height,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: (11 / designWidth) * width,
          top: (16 / designHeight) * height,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return index == 0
              ? Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: (112 / designWidth) * width,
                            height: (178 / designHeight) * height,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.messiImage),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: (8 / designHeight) * height,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Create a\n Story',
                              style: AppStyles.black16SemiBold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: (118 / designHeight) * height,
                      left: (48 / designWidth) * width,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          AppSvg.plusIcon,
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Container(
                      width: (112 / designWidth) * width,
                      height: (178 / designHeight) * height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.storyImage),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: (5 / designHeight) * height,
                        left: (5 / designWidth) * width,
                      ),
                      child:    CircleAvatar(backgroundImage:AssetImage(AppImages.messiImage,),radius: ((40/2)/designWidth)*width,),
                    ),
                  ],
                );
        },
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: (12 / designWidth) * width),
      ),
    );
  }
}
