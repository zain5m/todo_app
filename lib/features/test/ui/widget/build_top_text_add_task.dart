import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/config/themes/app_theme.dart';

class BuildTopTextAddTask extends StatelessWidget {
  const BuildTopTextAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Flexible(
            child: Divider(
              thickness: 2,
            ),
          ),
          5.horizontalSpace,
          RichText(
            text: TextSpan(
              text: LocaleKeys.addNewTask.tr(),
              style: textTheme.titleLarge,
              children: [
                TextSpan(
                  text: LocaleKeys.task.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          5.horizontalSpace,
          const Flexible(
            child: Divider(
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
