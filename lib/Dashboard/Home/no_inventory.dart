import 'package:blood_bank/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class NoInventoryWidget extends StatelessWidget {
  const NoInventoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            SvgPicture.asset(
              AppAssets.noRequestImage,
            ),
            const Gap(16),
            const Text(
              'Hey! Your request records comes in here. No requests from you yet. You can get started now',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(15),
            Text('Make a request') ,
          ],
        ),
      ),
    );
  }
}
