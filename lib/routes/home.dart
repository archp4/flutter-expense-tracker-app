import 'package:expense_tracker_app/models/const.dart';
import 'package:flutter/material.dart';

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
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNav(
          onTap: (index) {},
          index: 0,
          icons: [
            Icons.abc,
          ],
        ),
      ),
    );
  }
}

class BottomNav extends StatefulWidget {
  final Function(int) onTap;
  final int index;
  final List<IconData> icons;

  const BottomNav({
    super.key,
    required this.onTap,
    required this.index,
    required this.icons,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
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
            children: [
              ListView.builder(
                itemCount: widget.icons.length,
                itemBuilder: (_, index) => Icon(widget.icons[index]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
