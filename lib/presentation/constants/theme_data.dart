import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  iconTheme: IconThemeData(
    color: AppColors.primary,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
);
