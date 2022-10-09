import 'package:blood_bank/Dashboard/Home/custom_search.dart';
import 'package:blood_bank/Dashboard/Home/inventory_widget.dart';
import 'package:blood_bank/core/constants/app_assets.dart';
import 'package:blood_bank/core/shared_ui/app_colors.dart';
import 'package:blood_bank/core/shared_ui/touchable_opacity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HospitalHomePage extends StatefulWidget {
  const HospitalHomePage({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<HospitalHomePage> createState() => _HospitalHomePageState();
}

class _HospitalHomePageState extends State<HospitalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            profile(
              key: widget.scaffoldKey,
            ),
            SvgPicture.asset(
              AppAssets.notificationIcon,
            ),
          ],
        ),
        const Gap(20),
        const CustomSearchBarWidget(),
        const Gap(25),
        const InventoryWidget(),
      ],
    );
  }

  Row profile({
    required GlobalKey<ScaffoldState> key,
  }) {
    return Row(
      children: [
        TouchableOpacity(
          onTap: () {
            key.currentState!.openDrawer();
          },
          child: SvgPicture.asset(
            AppAssets.personsImage,
            height: 35,
            width: 35,
          ),
        ),
        const Gap(5),
        const HospitalNameAndId(),
      ],
    );
  }
}

class HospitalNameAndId extends StatelessWidget {
  const HospitalNameAndId({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Maveric Hospitals',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Gap(5),
        Text(
          'BN-0021',
          style: TextStyle(
            color: AppColors.gray,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
