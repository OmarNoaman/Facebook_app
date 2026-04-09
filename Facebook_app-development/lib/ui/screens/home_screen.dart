import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/ui/widgets/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/utils/app_colors.dart';
import '../widgets/custom_icon.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double designWidth = 393;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: SvgPicture.asset(AppSvg.facebookIcon),
          actions: [
            CustomIcon(imageName: AppSvg.plusIcon,paddingRight: 12,),
            CustomIcon(imageName: AppSvg.searchIcon,paddingRight: 12,),
            CustomIcon(imageName: AppSvg.messengerIcon,paddingRight: 12,),
          ],
          bottom: TabBar(
            tabs: [
              Tab(child: SvgPicture.asset(AppSvg.homeIcon)),
              Tab(child: SvgPicture.asset(AppSvg.reelsIcon)),
              Tab(child: SvgPicture.asset(AppSvg.storeIcon)),
              Tab(child: SvgPicture.asset(AppSvg.profileIcon)),
              Tab(child: SvgPicture.asset(AppSvg.notificationIcon)),
              // Tab(child: SvgPicture.asset(AppSvg.profileImageIcon)),
              Tab(child: CircleAvatar(backgroundImage:AssetImage(AppImages.messiImage,),radius: ((31/2)/designWidth)*width,),),
            ],
          ),
        ),

        body: TabBarView(
          children: [
           HomeTab(),
            Center(child: Text("It's Reels Tab Here")),
            Center(child: Text("It's Store Tab Here")),
            Center(child: Text("It's Profile Tab Here")),
            Center(child: Text("It's Notification Tab Here")),
            Center(child: Text("It's Information Tab Here")),
          ],
        ),
      ),
    );
  }
}
