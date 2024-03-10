import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app_locales.dart';

abstract class AppLanguages {
  static void setLocale(BuildContext context, Locale locale) async {
    if (AppLocale.allLocales.contains(locale)) {
      await context.setLocale(locale);
      // await EasyLocalization.of(context)!.setLocale(Locale('ar'));
      // TODO:LocalStorage
      // sl.get<LocalStorage>().storeLanguage(locale.toStringWithSeparator());
    } else {
      throw Exception('App does not support this locale');
    }
  }

  static Locale get getCurrentLocale {
    Locale defaultLocale = AppLocale.englishLocale;
    return defaultLocale;
    // TODO:LocalStorage
    // String? temp = sl.get<LocalStorage>().language;
    // if (temp == null) {
    //   return defaultLocale;
    // } else {
    //   switch (temp) {
    //     case 'ar':
    //       return arabicLocale;
    //     case 'en':
    //       return englishLocale;
    //     default:
    //       return defaultLocale;
    //   }
    // }
  }

  static bool get isArabic => getCurrentLocale == AppLocale.arabicLocale;

  static bool get isEnglish => getCurrentLocale == AppLocale.englishLocale;
}
