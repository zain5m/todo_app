import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/config/themes/app_colors.dart';
import 'package:todo_tesk/core/config/themes/app_theme.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_state.dart';

class BuildBottomButtonsAddTask extends StatelessWidget {
  const BuildBottomButtonsAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = TaskBloc.get(context);
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) {
        if (state.statusAddTask.isSuccess) {
          context.pop();
        }
        if (state.statusAddTask.isError) {
          //TODO:Show Error
        }
      },
      child: Padding(
        padding: REdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              minWidth: 150.w,
              height: 55.h,
              onPressed: () {
                if (bloc.formKey.currentState!.validate()) {
                  bloc.add(AddTaskEvent());
                }
              },
              color: AppColors.primary,
              child: Text(
                LocaleKeys.addTask.tr(),
                style: textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
