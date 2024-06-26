import 'package:expense_tracker_app/models/const.dart';
import 'package:expense_tracker_app/widgets/app_header.dart';
import 'package:expense_tracker_app/widgets/bottom_nav.dart';
import 'package:expense_tracker_app/widgets/home_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;

  final moneyFormat = NumberFormat("#,##0.00", "en_US");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: ConstantValue.size / 2,
              horizontal: ConstantValue.size * 1.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppHeader(moneyFormat: moneyFormat),
                SizedBox(height: ConstantValue.size),
                HomeChart(),
              ],
            ),
          ),
        ),
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          backgroundColor: ConstantValue.primaryColor,
          foregroundColor: Colors.black,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNav(
          icons: [
            Icons.dashboard,
            Icons.business_center,
            Icons.telegram,
            Icons.list,
            Icons.settings,
          ],
        ),
      ),
    );
  }
}
