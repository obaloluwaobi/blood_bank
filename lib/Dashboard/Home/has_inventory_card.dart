
import 'package:blood_bank/core/shared_ui/app_colors.dart';
import 'package:blood_bank/core/shared_ui/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';



class HasInventoryCard extends StatelessWidget {
  const HasInventoryCard({
    super.key,
    required this.data,
  });
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 0.5,
            offset: Offset(
              2,
              0.5,
            ),
            color: Color.fromARGB(255, 221, 217, 217),
          ),
          BoxShadow(
            blurRadius: 0.5,
            offset: Offset(
              -2,
              0.5,
            ),
            color: Color.fromARGB(255, 221, 217, 217),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          firstPart(),
          StatusContainer(
            text: data['status'],
            color: data['status'] == 'pending'
                ? AppColors.red
                : data['status'] == 'redirected'
                    ? AppColors.orange
                    : data['status'] == 'delivered'
                        ? AppColors.blue
                        : data['status'] == 'approve'
                            ? AppColors.green
                            : AppColors.darkGray,
          ),
        ],
      ),
    );
  }

  Row firstPart() {
    return Row(
      children: [
        Image.asset(
          data['picture'],
          height: 41,
          width: 41,
        ),
        const Gap(5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data['name'],
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(2),
            Text(
              data['time'],
              style: const TextStyle(
                fontSize: 10,
                color: AppColors.darkGray,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(2),
            Text(
              data['date'],
              style: const TextStyle(
                fontSize: 10,
                color: AppColors.darkGray,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(5),
        color: color.withOpacity(0.3),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: color,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
