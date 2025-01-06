import 'package:clone_instagram/theme.dart';
import 'package:clone_instagram/widgets/icon_wrap.dart';
import 'package:clone_instagram/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    Widget iconBtnWithDesc({
      required String iconName,
      required String counting,
    }) {
      return Container(
        margin: const EdgeInsets.only(right: 5),
        child: Row(
          children: [
            IconWrap(
              color: kBlackColor,
              iconName: iconName,
              size: 27,
              margin: const EdgeInsets.only(right: 5),
            ),
            Text(
              counting,
              style: whiteTextStyle.copyWith(color: kBlackColor),
            )
          ],
        ),
      );
    }

    Widget postHeader() {
      return Container(
        height: 55,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: kGreyColor.withOpacity(.08)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const ProfileItem(size: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Acepnurmansidik_',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semibold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(kWhiteColor, BlendMode.srcIn),
                  image: const AssetImage('assets/love.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget postContent() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              TextSpan(
                text: 'acepnurmansidik_ ',
                style: whiteTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 12,
                  color: kBlackColor,
                ),
                children: [
                  TextSpan(
                    text:
                        "sydneyasgdfadahdjadafgdagdfafdgasdhggdasgfdsakdljaskljdjdhasjhjghagdhasdadgafdfdfasdfgafdadakdhljasdhasgdkadadjasgdhasgdjkadasda",
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      color: kBlackColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                '3 hour ago',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                  color: kGreyColor.withOpacity(.8),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget postMultiFile() {
      return Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: kPrimaryColor,
            child: SingleChildScrollView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width,
                    color: kBlackColor,
                  ),
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width,
                    color: kWhiteColor,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: kWhiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 9,
                  width: 9,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    color: kGreyColor.withOpacity(.3),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                    color: kBlueColor.withOpacity(.8),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Container(
      width: double.infinity,
      color: kSecondaryColor,
      child: Column(
        children: [
          postHeader(),
          postMultiFile(),
          Container(
            height: 40,
            width: double.infinity,
            color: kWhiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                iconBtnWithDesc(iconName: "love", counting: "562"),
                iconBtnWithDesc(iconName: "comment", counting: "23"),
                iconBtnWithDesc(iconName: "msg", counting: "23"),
                const Spacer(),
                IconWrap(
                  iconName: 'bookmark',
                  size: 27,
                  color: kBlackColor,
                ),
              ],
            ),
          ),
          postContent(),
        ],
      ),
    );
  }
}
