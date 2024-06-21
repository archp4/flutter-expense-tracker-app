import 'package:expense_tracker_app/models/const.dart';
import 'package:expense_tracker_app/providers/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(),
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

class BottomNav extends StatefulWidget {
  final List<IconData> icons;

  const BottomNav({
    super.key,
    required this.icons,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomProvider>(
      builder: (context, value, child) {
        return Stack(
          children: [
            Opacity(
              opacity: 0.1,
              child: Container(
                height: 60,
                margin: EdgeInsets.only(
                  left: ConstantValue.size,
                  bottom: ConstantValue.size,
                  right: ConstantValue.size,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(158, 158, 158, 1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(ConstantValue.size),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(
                left: ConstantValue.size,
                bottom: ConstantValue.size,
                right: ConstantValue.size,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(ConstantValue.size),
              ),
              padding: EdgeInsets.symmetric(horizontal: ConstantValue.size),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  widget.icons.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index != 2) value.changeIndex(index);
                    },
                    child: Icon(
                      widget.icons[index],
                      color: index != 2
                          ? index == value.index
                              ? ConstantValue.primaryColor
                              : Colors.white
                          : Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
