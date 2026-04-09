import 'package:facebook/ui/widgets/vertical_list_view.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import 'horizontal_list_view.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    double designWidth = 393;
    double designHeight = 852;
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: (15/designWidth)*width,
            left: (11/designWidth)*width,
            top: (18/designHeight)*height,
            bottom: (18/designHeight)*height,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    CircleAvatar(backgroundImage:AssetImage(AppImages.messiImage,),radius: ((43/2)/designWidth)*width,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What’s in Your Mind?',
                    contentPadding: EdgeInsets.only(left: (10/designWidth)*width),
                    border: InputBorder.none,
                  ),
                ),
                // child: TextField(
                //   decoration: InputDecoration(
                //     prefixIcon: SvgPicture.asset(AppSvg.imageIcon),
                //     hintText: 'What’s in Your Mind?',
                //     suffixIcon: SvgPicture.asset(AppSvg.photosIcon,width: 28,height: 28,),
                //   ),
                // ),
              ),
              Image.asset(AppImages.photosIcon),
            ],
          ),
        ),
        Divider(thickness: 2,),
        HorizontalListView(),
        Divider(thickness: 2),
        VerticalListView(),
      ],
    );
  }
}
