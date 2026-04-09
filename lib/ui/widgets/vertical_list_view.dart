import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_styles.dart';
import 'custom_icon.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double designWidth = 393;
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              spacing: 5,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: (16/designWidth)*width),
                  child: CircleAvatar(backgroundImage:AssetImage(AppImages.routeProfile,) ,radius: ((53/2)/designWidth)*width,)
                  // Image.asset(AppImages.routeProfile),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Route', style: AppStyles.black16Medium),
                    Row(
                      spacing: (2/designWidth)*width,
                      children: [
                        Text('8h .', style: AppStyles.grey12Medium),
                        SvgPicture.asset(AppSvg.earthIcon),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            //   SvgPicture.asset(AppSvg.routPostImage,width: MediaQuery.of(context).size.width,
            //     height: 200,
            // fit: BoxFit.cover,),
            Image.asset(AppImages.routImage),
            Row(
              children: [
                CustomIcon(imageName: AppSvg.heartIcon,paddingLeft: 16,),
                CustomIcon(imageName: AppImages.chatIcon,isSvg: false,paddingLeft: 8,),
                CustomIcon(imageName: AppSvg.paperPlaneIcon,paddingLeft: 8,),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border_outlined),
                ),
              ],
            ),
          ],
        ),
        separatorBuilder: (context, index) => Divider(thickness: 2),
        itemCount: 10,
      ),
    );
  }
}
