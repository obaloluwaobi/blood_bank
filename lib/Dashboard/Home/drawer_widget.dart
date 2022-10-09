import 'package:blood_bank/Dashboard/Home/home.dart';
import 'package:blood_bank/core/constants/app_assets.dart';
import 'package:blood_bank/core/shared_ui/app_colors.dart';
import 'package:blood_bank/core/shared_ui/touchable_opacity.dart';
import 'package:blood_bank/core/shared_ui/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      color: AppColors.white,
      child: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 218, 218, 223),
            child: SvgPicture.asset(
              AppAssets.drawerImage,
            ),
          ),
          Positioned(
            top: 80,
            child: Column(
              children: [
                profileSection(context),
                optionsSection(context),
              ],
            ),
          ),
          bottomSection(context),
        ],
      ),
    );
  }

  Positioned bottomSection(BuildContext context) {
    return Positioned(
      bottom: screenHeight(context) / 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            width: screenWidth(context),
            color: AppColors.darkGray,
          ),
          Gap(screenHeight(context) / 30),
          const DrawerOptionsWidget(
            text: 'Rate Us',
            imageUrl: AppAssets.rateUsDrawerIcon,
          ),
          const DrawerOptionsWidget(
            text: 'Sign Out',
            imageUrl: AppAssets.signOutDrawerIcon,
          ),
        ],
      ),
    );
  }

  Column optionsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DrawerOptionsWidget(
          text: 'Profile',
          imageUrl: AppAssets.profileDrawerIcon,
        ),
        DrawerOptionsWidget(
          text: 'Notification',
          imageUrl: AppAssets.notificationDrawerIcon,
        ),
        DrawerOptionsWidget(
          text: 'Reports',
          imageUrl: AppAssets.reportsDrawericon,
        ),
        DrawerOptionsWidget(
          text: 'Setting',
          imageUrl: AppAssets.settingsDrawerIcon,
        ),
        DrawerOptionsWidget(
          text: 'Notification',
          imageUrl: AppAssets.notificationDrawerIcon,
        ),
        DrawerOptionsWidget(
          text: 'About Us',
          imageUrl: AppAssets.aboutUsDrawerIcon,
        ),
      ],
    );
  }

  SizedBox profileSection(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppAssets.personsImage,
            ),
            const Gap(15),
            const HospitalNameAndId(),
            Gap(
              screenHeight(context) / 20,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerOptionsWidget extends StatelessWidget {
  const DrawerOptionsWidget({
    Key? key,
    required this.text,
    required this.imageUrl,
  }) : super(key: key);
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          10,
          10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(
              imageUrl,
            ),
            const Gap(10),
            Text(
              text,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
