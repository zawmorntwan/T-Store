import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:t_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:t_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:t_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:t_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_theme.dart';

sealed class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
  );
}
