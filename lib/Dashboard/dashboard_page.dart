import 'package:blood_bank/Dashboard/Donors/Donors.dart';
import 'package:blood_bank/Dashboard/Home/drawer_widget.dart';
import 'package:blood_bank/Dashboard/Home/home.dart';
import 'package:blood_bank/Dashboard/Request/Request.dart';
import 'package:blood_bank/Dashboard/bottom_navbar_icon.dart';
import 'package:blood_bank/Dashboard/inventory/Inventory.dart';
import 'package:blood_bank/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class HospitalDashboardPage extends StatefulWidget {
  const HospitalDashboardPage({
    super.key,
    this.index = 0,
  });
  final int? index;

  @override
  State<HospitalDashboardPage> createState() => _HospitalDashboardPageState();
}

class _HospitalDashboardPageState extends State<HospitalDashboardPage> {
  static final ValueNotifier<int> _currentIndex = ValueNotifier(0);
  static void navigate(int index) {
    _currentIndex.value = index;
  }

  @override
  void initState() {
    _currentIndex.value = widget.index!;
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
      HospitalHomePage(
        scaffoldKey: _scaffoldKey,
      ),
      const Request(),
      const Inventory(),
      const Donors(),
    ];
    return ValueListenableBuilder<int>(
      valueListenable: _currentIndex,
      builder: (context, index, child) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: const Drawer(
            child: DrawerWidget(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                0,
              ),
              child: widgets[index],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (index) {
              navigate(index);
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  iconPath: AppAssets.homeIcon,
                  isActive: index == 0,
                ),
                label: 'Home',
                tooltip: 'Home',
              ),
              BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  iconPath: AppAssets.requestIcon,
                  isActive: index == 1,
                ),
                label: 'Request',
                tooltip: 'Request',
              ),
              BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  iconPath: AppAssets.inventoryIcon,
                  isActive: index == 2,
                ),
                label: 'Inventory',
                tooltip: 'Inventory',
              ),
              BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  iconPath: AppAssets.donorsIcon,
                  isActive: index == 3,
                ),
                label: 'Donors',
                tooltip: 'Donors',
              ),
            ],
          ),
        );
      },
    );
  }
}
