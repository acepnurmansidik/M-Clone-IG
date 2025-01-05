import 'package:clone_instagram/theme.dart';
import 'package:clone_instagram/widgets/custom_button.dart';
import 'package:clone_instagram/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController usernameController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController confirmPasswordController =
      TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 40),
        child: appBar(),
      ),
      body: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 60, bottom: 20),
                child: Text(
                  'Sign Up For\nConnect With Us',
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
                mgsValidate: 'Please enter username',
                margin: const EdgeInsets.only(bottom: 5),
              ),
              CustomTextFormField(
                controller: usernameController,
                labelText: "Password",
                hintText: "Enter password",
                mgsValidate: 'Please enter password',
                margin: const EdgeInsets.only(bottom: 5),
              ),
              CustomTextFormField(
                controller: confirmPasswordController,
                labelText: "Confirm password",
                hintText: "Enter confirm password",
                mgsValidate: 'Please enter confirm password',
                margin: const EdgeInsets.only(bottom: 50),
              ),
              CustomButton(
                title: 'Submit',
                bgColor: kBlueColor,
                onPressd: () {
                  if (passwordController.text ==
                      confirmPasswordController.text) {}
                },
              )
            ],
          )),
    );
  }
}
