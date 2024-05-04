import 'package:admin_dashboard/extensions/responsive_font_size.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: 16.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleBold16(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: 16.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: 16.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        color: const Color(0xffffffff),
        fontSize: 20.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: 16.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: 20.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: 12.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: 24.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: 14.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        color: const Color(0xffffffff),
        fontSize: 18.toResponsiveFontSize(context),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
}
