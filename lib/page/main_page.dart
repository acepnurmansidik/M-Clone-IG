import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: const Center(
        child: Text("HOME PAGE"),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem({required String iconName}) {
      return Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: kRedColor,
        ),
      );
    }

    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: kGreyColor.withOpacity(.3), width: 1),
        ),
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          menuItem(iconName: "home"),
          menuItem(iconName: "home"),
          menuItem(iconName: "home"),
          menuItem(iconName: "home"),
          menuItem(iconName: "home"),
        ],
      ),
    );
  }
}
