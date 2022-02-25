import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:raaz/config/config.dart';
import 'package:raaz/pages/tabs/home_tab.dart';
import 'package:raaz/pages/tabs/profile_tab.dart';
import 'package:raaz/pages/tabs/sliver_timeline_tab.dart';
import 'package:raaz/pages/tabs/timeline_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _bottomNavIndex;
  late List<Widget> _tabs;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _bottomNavIndex = Config.initialTab;
    _tabs = [
      HomeTab(),
      SliverTimelineTab(),
      ProfileTab(),
      TimelineTab(),
    ];
    _controller = PageController(initialPage: Config.initialTab);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 30),
        onPressed: () {
          _controller.animateToPage(
            2,
            duration: const Duration(seconds: 1),
            curve: Curves.bounceIn,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [Icons.home, Icons.timeline, Icons.person],
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        activeColor: const Color(0xFFf67c31),
        height: 60,
        iconSize: 25,
        inactiveColor: const Color(0xFF29142c).withOpacity(0.55),
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
          animateToPage(index);
        },
      ),
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            _bottomNavIndex = value;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        children: _tabs,
      ),
    );
  }

  animateToPage(int index) {
    _controller.jumpToPage(index);
  }
}
