import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/config/routing/routing.dart';
import 'package:todo_tesk/core/config/themes/app_colors.dart';
import 'package:todo_tesk/core/config/themes/app_theme.dart';
import 'package:todo_tesk/core/utils/assets/assets.gen.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_state.dart';
import 'package:todo_tesk/features/test/ui/widget/item_task_widget.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
                Container(
                  margin: REdgeInsets.fromLTRB(55, 0, 0, 0),
                  width: double.infinity,
                  height: 100.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RSizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(
                          valueColor: const AlwaysStoppedAnimation(
                            AppColors.primary,
                          ),
                          backgroundColor: Colors.grey,
                          strokeWidth: 5,
                          value: state.doneTasks.length /
                              state.valueOfTheIndicator,
                        ),
                      ),
                      25.horizontalSpace,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.myTitle.tr(),
                            style: textTheme.displayLarge,
                          ),
                          5.verticalSpace,
                          Text(
                            "${state.doneTasks.length} of ${state.allTasks.length} task",
                            style: textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: REdgeInsetsDirectional.only(top: 10),
                  child: const Divider(
                    thickness: 2,
                    color: Colors.grey,
                    indent: 100,
                  ),
                ),
                Expanded(
                  child: state.allTasks.isNotEmpty
                      ? ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.allTasks.length,
                          itemBuilder: (BuildContext context, int index) {
                            var task = state.allTasks[index];
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
                                LocaleKeys.emptyTask.tr(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => AddTaskRoute().go(context),
        tooltip: LocaleKeys.addTask.tr(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
