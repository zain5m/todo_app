import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/app/ui/bloc/app_bloc.dart';
import 'package:todo_tesk/core/config/di/injection.dart';
import 'package:todo_tesk/core/config/localization/app_languages.dart';
import 'package:todo_tesk/core/config/localization/app_locales.dart';
import 'package:todo_tesk/core/config/localization/codegen_loader.g.dart';
import 'package:todo_tesk/core/config/routing/routing.dart';
import 'package:todo_tesk/core/config/themes/app_theme.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: AppLocale.allLocales,
      path: 'assets/i18n',
      fallbackLocale: AppLocale.englishLocale,
      startLocale: AppLanguages.getCurrentLocale,
      saveLocale: false,
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader(),
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => getIt<AppBloc>()),
                  BlocProvider(
                    create: (context) => getIt<TaskBloc>()..add(GetTaskEvent()),
                  ),
                ],
                child: MaterialApp.router(
                  title: 'TODO',
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  theme: appTheme,
                  routerConfig: router,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
