import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/config/themes/app_theme.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_state.dart';
import 'package:animate_do/animate_do.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_tesk/core/config/themes/app_colors.dart';
import 'package:todo_tesk/core/utils/assets/assets.gen.dart';
import 'package:todo_tesk/features/test/ui/widget/item_task_widget.dart';

class DoneTaskScreen extends StatelessWidget {
  const DoneTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(
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
                      Text(
                        LocaleKeys.done_task.tr(),
                        style: textTheme.displayLarge,
                      ),
                      5.horizontalSpace,
                      const Flexible(
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: state.doneTasks.isNotEmpty
                      ? ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.doneTasks.length,
                          itemBuilder: (BuildContext context, int index) {
                            var task = state.doneTasks[index];
                            return Dismissible(
                              direction: DismissDirection.horizontal,
                              background: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey,
                                  ),
                                  8.horizontalSpace,
                                  Text(
                                    LocaleKeys.this_task_was_deleted.tr(),
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              onDismissed: (direction) {
                                TaskBloc.get(context).add(
                                  DeleteTaskEvent(task.id),
                                );
                              },
                              key: Key(task.id),
                              child: TaskItemWidget(
                                task: task,
                              ),
                            );
                          },
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeIn(
                              child: SizedBox(
                                width: 200.w,
                                height: 200.h,
                                child: Lottie.asset(
                                  Assets.lottie.emty,
                                  animate:
                                      state.tasks.isNotEmpty ? false : true,
                                ),
                              ),
                            ),
                            FadeInUp(
                              from: 30,
                              child: Text(
                                LocaleKeys.emptyDoneTask.tr(),
                                style: textTheme.headlineMedium!.copyWith(
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
