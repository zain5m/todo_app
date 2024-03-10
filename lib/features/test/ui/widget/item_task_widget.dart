import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/core/config/themes/app_colors.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key, required this.task});
  final LocalTaskModel task;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: task.isCompleted ? AppColors.secondary : Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            offset: const Offset(0, 4),
            blurRadius: 10,
          )
        ],
      ),
      child: ListTile(
        onTap: () {
          TaskBloc.get(context).add(
            UpdateTaskEvent(task),
          );
        },
        leading: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: task.isCompleted ? AppColors.primary : Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: .8,
            ),
          ),
          child: const Icon(
            Icons.check_outlined,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: REdgeInsetsDirectional.only(bottom: 5, top: 3),
          child: Text(
            task.title,
            style: TextStyle(
              fontSize: 16.sp,
              color: task.isCompleted ? AppColors.primary : Colors.black,
              fontWeight: FontWeight.w500,
              decoration: task.isCompleted ? TextDecoration.lineThrough : null,
            ),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.subtitle,
              style: TextStyle(
                fontSize: 14.sp,
                color: task.isCompleted
                    ? AppColors.primary
                    : const Color.fromARGB(255, 164, 164, 164),
                fontWeight: FontWeight.w300,
                decoration:
                    task.isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: REdgeInsetsDirectional.only(
                  bottom: 10,
                  top: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      DateFormat('hh:mm a', context.locale.toString())
                          .format(task.createdAtTime),
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: task.isCompleted ? Colors.white : Colors.grey,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMEd(context.locale.toString())
                          .format(task.createdAtDate),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: task.isCompleted ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
