import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerSection() {
      Widget customAppBarSection() {
        return Container(
          height: 50,
          width: double.infinity,
          color: Colors.purpleAccent,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      kBlackColor,
                      BlendMode.srcIn,
                    ),
                    image: const AssetImage('assets/locked.png'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Show more account");
                },
                child: Row(
                  children: [
                    Text(
                      'acepnurmansidik_',
                      style: blackTextStyle.copyWith(
                        color: kBlackColor,
                      ),
                    ),
                    Transform.rotate(
                      angle: -45.6,
                      child: Icon(
                        Icons.chevron_left,
                        color: kBlackColor,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 22.5,
                width: 22.5,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kBlackColor, width: 1),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      kBlackColor,
                      BlendMode.srcIn,
                    ),
                    image: const AssetImage('assets/plus.png'),
                  ),
                ),
              ),
              Container(
                height: 22.5,
                width: 22.5,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      kBlackColor,
                      BlendMode.srcIn,
                    ),
                    image: const AssetImage('assets/menu.png'),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget profileSection() {
        Widget itemProfile({required String title, required String value}) {
          return Container(
            height: 80,
            width: 80,
            color: kSecondaryColor,
            padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        }

        return Container(
          color: kPrimaryColor,
          height: 110,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/avatar.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width / 1.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    itemProfile(title: "post", value: "20"),
                    itemProfile(title: "following", value: "785"),
                    itemProfile(title: "follower", value: "100"),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      Widget descSection() {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NAME USER
              Text(
                'nama pengguna',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  color: kBlackColor,
                ),
              ),
              // BIO SECTION
              Text(
                'bio section',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  color: kBlackColor,
                ),
              ),
            ],
          ),
        );
      }

      Widget buttonSection() {
        Widget buttonItem({
          required String title,
          required Function() onPressed,
        }) {
          return Container(
            alignment: Alignment.center,
            height: 35,
            width: MediaQuery.of(context).size.width / 2.4,
            decoration: BoxDecoration(
              color: kRedColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
          );
        }

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonItem(title: "Edit profile", onPressed: () {}),
              buttonItem(title: "Bagikan profile", onPressed: () {}),
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: kRedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/add-user.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBarSection(),
          profileSection(),
          descSection(),
          buttonSection(),
        ],
      );
    }

    // CustomScrollView: Digunakan untuk menggabungkan beberapa jenis scrollable widgets, seperti SliverList dan SliverGrid.
    return CustomScrollView(
      slivers: [
        // SliverToBoxAdapter: Digunakan untuk menempatkan widget biasa (seperti customAppBarSection, etc) di dalam CustomScrollView.
        SliverToBoxAdapter(
          child: headerSection(),
        ),
        // SliverGrid: Digunakan untuk menampilkan grid yang dapat digulir. Anda dapat mengatur jumlah kolom dan jarak antar item dengan SliverGridDelegateWithFixedCrossAxisCount.
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Jumlah kolom
            crossAxisSpacing: 2.0, // Jarak antar kolom
            mainAxisSpacing: 2.0, // Jarak antar baris
            childAspectRatio: 1, // Rasio aspek untuk item grid
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  color: kSecondaryColor,
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: blackTextStyle.copyWith(color: kPrimaryColor),
                    ),
                  ),
                ),
              );
            },
            childCount: 13, // Jumlah item dalam grid
          ),
        )
      ],
    );
  }
}
