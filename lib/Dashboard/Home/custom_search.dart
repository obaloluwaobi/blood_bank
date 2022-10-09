import 'package:blood_bank/core/shared_ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class CustomSearchBarWidget extends StatefulWidget {
  const CustomSearchBarWidget({
    Key? key,
    this.textEditingController,
  }) : super(key: key);
  final TextEditingController? textEditingController;

  @override
  State<CustomSearchBarWidget> createState() => _CustomSearchBarWidgetState();
}

class _CustomSearchBarWidgetState extends State<CustomSearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.gray,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            color: AppColors.gray,
          ),
          const Gap(10),
          Expanded(
            child: TextField(
              controller: widget.textEditingController,
              style: const TextStyle(
                color: AppColors.gray,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
