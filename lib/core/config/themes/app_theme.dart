import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

ThemeData get appTheme => ThemeData.light().copyWith(
      // dialogTheme: dialogTheme,
      scaffoldBackgroundColor: Colors.white,
      // primarySwatch: AppColors.primary.toMaterialColor(),
      brightness: Brightness.light,
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      // inputDecorationTheme: inputDecorationTheme,
      // useMaterial3: true,
      colorScheme: colorScheme,
    );

AppBarTheme get appBarTheme => const AppBarTheme(
      surfaceTintColor: Colors.white,
      shadowColor: Colors.black,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        statusBarColor: AppColors.white,
        systemNavigationBarDividerColor: AppColors.white,
      ),
    );

ColorScheme get colorScheme => const ColorScheme.light(
      brightness: Brightness.light,
      background: AppColors.white,
      inversePrimary: AppColors.primary,
      primary: AppColors.primary,
    );

/// | displayLarge   | 96.0 | light   | -1.5
/// | displayMedium  | 60.0 | light   | -0.5
/// | displaySmall   | 48.0 | regular |  0.0
///
/// | headlineLarge  |      |  |
/// | headlineMedium | 34.0 | regular |  0.25
/// | headlineSmall  | 24.0 | regular |  0.0
///
/// | titleLarge     | 20.0 | medium  |  0.15
/// | titleMedium    | 16.0 | regular |  0.15
/// | titleSmall     | 14.0 | medium  |  0.1
///
/// | bodyLarge      | 16.0 | regular |  0.5
/// | bodyMedium     | 14.0 | regular |  0.25
/// | bodySmall      | 12.0 | regular |  0.4
///
/// | labelLarge     | 14.0 | medium  |  1.25
///   labelMedium
/// | labelSmall     | 10.0 | regular |  1.5
TextTheme get textTheme => TextTheme(
      displayLarge: TextStyle(
        color: Colors.black,
        fontSize: 45.sp,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: 21.sp,
      ),
      displaySmall: TextStyle(
        color: Color.fromARGB(255, 234, 234, 234),
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),

      // headlineLarge: TextStyle(
      //   fontFamily: AppFonts.geSSTwoBold,
      //   fontSize: 26.sp,
      //   color: AppColors.black,
      // ),
      headlineMedium: TextStyle(
        color: Colors.grey,
        fontSize: 17.sp,
      ),
      headlineSmall: TextStyle(
        color: Colors.grey,
        fontSize: 16.sp,
      ),
      titleLarge: TextStyle(
        fontSize: 40.sp,
        color: Colors.black,
        fontWeight: FontWeight.w300,
      ),
      titleMedium: TextStyle(
        color: Colors.grey,
        fontSize: 16.sp,
        fontWeight: FontWeight.w300,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      // labelLarge: TextStyle(
      //   color: AppColors.green_2,
      // ),
      // labelMedium: TextStyle(
      //   fontSize: 14.sp,
      //   fontFamily: AppFonts.geSSTwoMedium,
      //   color: AppColors.black,
      // ),
      // labelSmall: TextStyle(
      //   fontSize: 12.sp,
      //   color: AppColors.gray_2,
      //   fontFamily: AppFonts.geSSTwoLight,
      // ),
      //
      // bodyLarge: TextStyle(
      //   fontSize: 14.sp,
      //   // fontFamily: AppFonts.metropolisExtraBold,
      //   fontFamily: AppFonts.geSSTwoBold,
      //   color: AppColors.black,
      // ),
      // bodyMedium: TextStyle(
      //   fontSize: 13.sp,
      //   color: AppColors.black,
      //   fontFamily: AppFonts.geSSTwoMedium,
      // ),
      // // T metropolisRegular
      // bodySmall: TextStyle(
      //   fontSize: 11.sp,
      //   color: AppColors.gray_2,
      //   fontFamily: AppFonts.geSSTwoLight,
      // ),
    );
// DialogTheme get dialogTheme {
//   return DialogTheme(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(AppSizes.dialogRadius)));
// }
// InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
//       labelStyle: textTheme.bodyLarge,
//       floatingLabelBehavior: FloatingLabelBehavior.never,
//       focusedBorder: OutlineInputBorder(
//         borderRadius:
//             const BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
//         borderSide:
//             BorderSide(width: AppSizes.borderWidth2, color: AppColors.focus),
//       ),
//       disabledBorder: OutlineInputBorder(
//         borderRadius:
//             const BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
//         borderSide:
//             BorderSide(width: AppSizes.borderWidth1, color: AppColors.disable),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius:
//             const BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
//         borderSide:
//             BorderSide(width: AppSizes.borderWidth2, color: AppColors.error),
//       ),
//       enabledBorder: const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
//         borderSide:
//             BorderSide(width: AppSizes.borderWidth1, color: AppColors.lightest),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderRadius:
//             const BorderRadius.all(Radius.circular(AppSizes.borderRadius)),
//         borderSide: BorderSide(
//             width: AppSizes.borderWidth2, color: AppColors.focusError),
//       ),
//     );
