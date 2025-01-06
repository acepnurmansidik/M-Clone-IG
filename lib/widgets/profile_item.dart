import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final double size;

  const ProfileItem({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: const EdgeInsets.only(right: 6),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [kPrimaryColor, kSecondaryColor],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kWhiteColor,
        ),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/avatar.png'),
            ),
          ),
        ),
      ),
    );
  }
}
