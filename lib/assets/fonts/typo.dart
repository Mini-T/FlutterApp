import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';

class CustomTextStyles {
  static TextStyle bigTitle({Color color = CustomColors.White}) {
    return const TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'IntegralCf',
        fontSize: 30,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none
    );
  }

  static TextStyle ButtonText({Color color = CustomColors.White}) {
    return const TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'IntegralCf',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none
    );
  }

  static TextStyle ImageTitle({Color color = CustomColors.White}) {
    return const TextStyle(
        color: const Color(0xFF000000),
        fontFamily: 'Inter',
        fontSize: 7,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none
    );
  }

  static TextStyle ImageSubTitle({Color color = CustomColors.White}) {
    return const TextStyle(
        color: const Color(0xFF000000),
        fontFamily: 'Inter',
        fontSize: 6,

        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none
    );
  }

  static TextStyle BgText({Color color = CustomColors.White}) {
    return const TextStyle(
        color: Color(0xFFFFFFFF),
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w500,

        decoration: TextDecoration.none
    );
  }

  static TextStyle LoginTitle() {
    return const TextStyle(
        color: CustomColors.DarkGrey,
        fontFamily: 'IntegralCf',
        fontSize: 26,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none
    );
  }

  static TextStyle LoginSubTitle({Color color = CustomColors.DarkGrey}) {
    return TextStyle(
        color: color,
        fontFamily: 'Inter',
        fontSize: 18,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none
    );
  }

  static TextStyle FormSub({Color color = CustomColors.DarkGrey}) {
    return TextStyle(
        color: color,
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none
    );
  }

  static TextStyle BoxSub({Color color = const Color(0xFF605DF5)}) {
    return TextStyle(
        color: color,
        fontFamily: 'IntegralCf',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none
    );
  }
  static TextStyle scrollTitle({Color color = const Color(0xFF1B191A), FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
        color: color,
        fontFamily: 'IntegralCf',
        fontSize: 14,
        fontWeight: fontWeight,
        decoration: TextDecoration.none
    );
  }
  static TextStyle BiggerImgSub(){
    return TextStyle(
      color: Color(0xFF1B191A),
      fontFamily: 'Inter',
      fontSize: 10,
      fontWeight: FontWeight.w500
    );
  }
}