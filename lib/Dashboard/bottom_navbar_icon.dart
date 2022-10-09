import 'package:blood_bank/core/shared_ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarIcon extends StatelessWidget {
  final String iconPath;
  final bool isActive;
  final Color? color;
  const BottomNavBarIcon({
    Key? key,
    required this.iconPath,
    required this.isActive,
    this.color = AppColors.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SvgPicture.asset(
        iconPath,
        height: 25,
        width: 25,
        color: isActive ? color : const Color(0xff999999),
      ),
    );
  }
}
