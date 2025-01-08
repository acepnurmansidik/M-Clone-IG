import 'package:clone_instagram/page/home_page.dart';
import 'package:clone_instagram/page/profile_page.dart';
import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: const Center(
        child: ProfilePage(),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    String status = "inactive";
    Widget menuItem({required String iconName}) {
      return Container(
        height: 32.5,
        width: 32.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/${iconName}_$status.png'),
          ),
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
          menuItem(iconName: "search"),
          GestureDetector(
            onTap: () {
              print("OKEE");
            },
            child: Container(
              height: 34,
              width: 34,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [kPrimaryColor, kSecondaryColor],
                ),
              ),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(kWhiteColor, BlendMode.srcIn),
                    image: const AssetImage('assets/plus.png'),
                  ),
                ),
              ),
            ),
          ),
          menuItem(iconName: "video"),
          menuItem(iconName: "profile"),
        ],
      ),
    );
  }
}
