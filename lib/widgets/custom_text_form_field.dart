import 'package:clone_instagram/theme.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool isSecure;
  final String labelText;
  final String hintText;
  final String mgsValidate;
  final double width;
  final EdgeInsets margin;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.mgsValidate,
    this.labelText = "",
    this.isSecure = false,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: width,
      margin: margin,
      child: TextFormField(
        controller: controller,
        cursorColor: kBlackColor,
        obscureText: isSecure,
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return mgsValidate;
          }
          return null;
        },
        style: blackTextStyle.copyWith(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: greyTextStyle.copyWith(fontSize: 16),
          focusColor: Colors.transparent,
          focusedBorder: GradientOutlineInputBorder(
            gradient: LinearGradient(
              colors: [kPrimaryColor, kSecondaryColor],
            ),
            borderRadius: BorderRadius.circular(12),
            width: 2,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: kBlackColor, width: 1.5),
          ),
          errorStyle: redTextStyle.copyWith(
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
          errorMaxLines: 1,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kRedColor, width: 1.5),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kRedColor, width: 1.5),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
