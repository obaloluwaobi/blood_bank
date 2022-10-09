
import 'package:blood_bank/Dashboard/Home/has_inventory.dart';
import 'package:blood_bank/core/shared_ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'no_inventory.dart';

class InventoryWidget extends StatefulWidget {
  const InventoryWidget({super.key});

  @override
  State<InventoryWidget> createState() => _InventoryWidgetState();
}

class _InventoryWidgetState extends State<InventoryWidget> {
  final _hasInventory = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Inventory',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: AppColors.gray,
            ),
          ),
          const Gap(20),
          Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: _hasInventory,
              builder: (context, hasInventory, child) {
                return hasInventory
                    ? const HasInventoryWidget()
                    : const NoInventoryWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
