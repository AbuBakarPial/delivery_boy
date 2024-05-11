import 'package:delivery_boy/core/network/utils/pref_utils.dart';
import 'package:delivery_boy/core/network/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  final _appTheme = PrefUtils().getThemeData();
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };
  void changeTheme(String newTheme) {
    PrefUtils().setThemeData(newTheme);
    Get.forceAppUpdate();
  }

  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.black900,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray800,
      ),
    );
  }

  LightCodeColors themeColor() => _getThemeColors();
  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray60001,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray60001,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 36.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 18.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray800,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFF79725),
    primaryContainer: Color(0XFF2B2B2B),
    secondaryContainer: Color(0XFFFF8A00),
    errorContainer: Color(0XFF7B7B7B),
    onError: Color(0XFFC1BEBE),
    onPrimary: Color(0XFF222222),
    onPrimaryContainer: Color(0XFFECECEC),
  );
}

class LightCodeColors {
  Color get black900 => const Color(0XFF000000);
  Color get blueGray100 => const Color(0XFFCFCFCF);
  Color get blueGray400 => const Color(0XFF888888);
  Color get deepOrangeA400 => const Color(0XFFFF3D00);
  Color get gray30099 => const Color(0X99DDDEDE);
  Color get gray400 => const Color(0XFFBDBDBD);
  Color get gray50 => const Color(0XFFFBFBFB);
  Color get gray600 => const Color(0XFF757575);
  Color get gray60001 => const Color(0XFF858585);
  Color get gray700 => const Color(0XFF5B5B5B);
  Color get gray70001 => const Color(0XFF555658);
  Color get gray800 => const Color(0XFF494949);
  Color get green800 => const Color(0XFF058429);
  Color get green900 => const Color(0XFF0B4522);
  Color get orange100 => const Color(0XFFF5CD9E);
  Color get orange300 => const Color(0XFFE1A156);
  Color get orange400 => const Color(0XFFFFA030);
  Color get orange50 => const Color(0XFFFFF3E5);
  Color get orange500 => const Color(0XFFFF9900);
  Color get orangeA100 => const Color(0XFFFFD27C);
  Color get red900 => const Color(0XFFCC1313);
  Color get whiteA700 => const Color(0XFFFFFFFF);
}
