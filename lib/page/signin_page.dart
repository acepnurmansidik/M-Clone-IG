import 'package:clone_instagram/page/main_page.dart';
import 'package:clone_instagram/page/signup_page.dart';
import 'package:clone_instagram/theme.dart';
import 'package:clone_instagram/widgets/custom_button.dart';
import 'package:clone_instagram/widgets/custom_text_form_field.dart';
import 'package:clone_instagram/widgets/dividing_line.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late FocusNode focusNode;
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController usernameController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Route routeAnimated(targetPage) {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => targetPage,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0); // Mulai dari kanan
          const end = Offset.zero; // Berhenti di posisi normal
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 80, bottom: 20),
              child: Text(
                'Sign In',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
            CustomTextFormField(
              controller: usernameController,
              labelText: "Username",
              hintText: "Enter username/email",
              mgsValidate: 'Please enter your username',
              margin: const EdgeInsets.only(bottom: 5),
            ),
            CustomTextFormField(
              controller: passwordController,
              labelText: "Password",
              hintText: "Enter password",
              mgsValidate: 'Please enter password',
              margin: const EdgeInsets.only(bottom: 10),
              isSecure: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      routeAnimated(
                        const SignUpPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Create account',
                    style: greyTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot password',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                ),
              ],
            ),
            CustomButton(
              title: "Login",
              bgColor: kBlueColor,
              margin: const EdgeInsets.only(top: 50),
              onPressd: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contect) => const MainPage(),
                  ),
                );
                // if (formKey.currentState!.validate()) {}
              },
            ),
            const StraightLine(
              title: "OR",
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            ),
            CustomButton(
              title: "Sign Up Google",
              iconName: "assets/google.png",
              bgColor: kWhiteColor,
              borderColor: kBlackColor,
              textColor: kBlackColor,
              margin: const EdgeInsets.only(bottom: 10),
              onPressd: () {
                if (formKey.currentState!.validate()) {}
              },
            ),
            CustomButton(
              title: "Sign Up Apple",
              iconName: "assets/apple.png",
              bgColor: kBlackColor,
              borderColor: kBlackColor,
              textColor: kWhiteColor,
              onPressd: () {
                if (formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
