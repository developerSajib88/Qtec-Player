
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qtec_player/utils/color_palates.dart';

class CustomTextStyles{

  /// This text style is make for title of video item
  static TextStyle titleTextStyle = GoogleFonts.hindSiliguri(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: ColorPalate.defaultWhite,
    height: 0.h
  );

  /// This text style is make for
  /// total video views and published time of video item
  static TextStyle viewsAndPublishedStyle = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: ColorPalate.greyColor,
  );


  /// This text style is make for
  /// total video MASH ALLAH, Like, SHARE and REPOR
  static TextStyle statisticsTextStyle = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: ColorPalate.greyColor,
  );


  /// Channel Name Text Style
  static TextStyle channelNameTextStyle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorPalate.defaultWhite,
  );

}