import 'package:flutter/material.dart';

class AppLocale {
  AppLocale._();
  static Locale get englishLocale => const Locale('en');

  static Locale get arabicLocale => const Locale('ar');

  static List<Locale> get allLocales => [
        arabicLocale,
        englishLocale,
      ];
}
