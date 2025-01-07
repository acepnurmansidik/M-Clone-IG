// ignore_for_file: unused_local_variable, unused_element, avoid_print

import 'package:carousel_slider/carousel_slider.dart';
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
    bool isShowDesc = true;
    int currentIndex = 0;

    Widget iconBtnWithDesc({
      required String iconName,
      required String counting,
      required Function() onPressed,
    }) {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
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
            top: BorderSide(width: 1, color: kGreyColor.withOpacity(.08)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const ProfileItem(size: 40),
                Text(
                  'Acepnurmansidik_',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                print("Triple dot icon");
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      kBlackColor,
                      BlendMode.srcIn,
                    ),
                    image: const AssetImage('assets/triple-dot.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget postContent() {
      return GestureDetector(
        onTap: () {
          setState(() {
            isShowDesc = !isShowDesc;
          });
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isShowDesc == false
                  ? Text.rich(
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
                    )
                  : Text.rich(
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
            child: CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                pauseAutoPlayInFiniteScroll: false,
                pauseAutoPlayOnTouch: false,
                pauseAutoPlayOnManualNavigate: false,
                viewportFraction: 1,
                aspectRatio: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: kBlackColor,
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: kPrimaryColor,
                ),
              ],
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

    Widget postSingleFile() {
      return Container(
        height: 300,
        width: double.infinity,
        color: kPrimaryColor,
      );
    }

    return Container(
      width: double.infinity,
      color: kWhiteColor,
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
                iconBtnWithDesc(
                  iconName: "love",
                  counting: "562",
                  onPressed: () {
                    print("Like button");
                  },
                ),
                iconBtnWithDesc(
                  iconName: "comment",
                  counting: "23",
                  onPressed: () {
                    print("Comment button");
                  },
                ),
                iconBtnWithDesc(
                  iconName: "msg",
                  counting: "23",
                  onPressed: () {
                    print("Share action");
                  },
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Bookmaark button");
                  },
                  child: IconWrap(
                    iconName: 'bookmark',
                    size: 27,
                    color: kBlackColor,
                  ),
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
