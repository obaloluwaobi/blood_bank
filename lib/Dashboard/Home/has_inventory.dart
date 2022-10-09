
import 'package:blood_bank/Dashboard/Home/has_inventory_card.dart';
import 'package:blood_bank/core/constants/app_assets.dart';
import 'package:blood_bank/core/shared_ui/column_builder.dart';
import 'package:flutter/material.dart';

class HasInventoryWidget extends StatefulWidget {
  const HasInventoryWidget({super.key});

  @override
  State<HasInventoryWidget> createState() => _HasInventoryWidgetState();
}

class _HasInventoryWidgetState extends State<HasInventoryWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColumnBuilder(
        itemCount: dummyInventory.length,
        itemBuilder: (context, index) {
          var inventory = dummyInventory[index];
          return HasInventoryCard(
            data: inventory,
          );
        },
      ),
    );
  }
}

final dummyInventory = <Map<String, dynamic>>[
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'pending',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'redirected',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'delivered',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'approve',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'pending',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'redirected',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'delivered',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'approve',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'pending',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'approve',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'approve',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'approve',
  },
  {
    'picture': AppAssets.hospitalAvatar,
    'name': 'CHEVRON BLOOD BANK',
    'time': '02:00PM',
    'date': '2022-06-29',
    'status': 'approve',
  },
];
