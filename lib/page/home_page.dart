import 'package:clone_instagram/theme.dart';
import 'package:clone_instagram/widgets/icon_wrap.dart';
import 'package:clone_instagram/widgets/post_item.dart';
import 'package:clone_instagram/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget statusList() {
      return SizedBox(
        height: 85,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [kPrimaryColor, kSecondaryColor],
                  ),
                ),
              ),
              const ProfileItem(size: 70),
              const ProfileItem(size: 70),
            ],
          ),
        ),
      );
    }

    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 69),
          children: [
            statusList(),
            const Column(
              children: [
                PostItem(),
              ],
            )
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              border: Border(
                bottom: BorderSide(
                  color: kGreyColor.withOpacity(.3),
                ),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(kBlackColor, BlendMode.srcIn),
                      image: const AssetImage('assets/instagram.png'),
                    ),
                  ),
                ),
                const Spacer(),
                IconWrap(
                  color: kBlackColor,
                  iconName: 'love',
                  size: 27,
                  margin: const EdgeInsets.only(right: 5),
                ),
                IconWrap(
                  iconName: 'msg',
                  size: 27,
                  color: kBlackColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
