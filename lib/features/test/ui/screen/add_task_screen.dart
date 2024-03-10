import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';
import 'package:todo_tesk/features/test/ui/widget/build_bottom_buttons_add_task.dart';
import 'package:todo_tesk/features/test/ui/widget/build_middle_text_fields_add_task.dart';
import 'package:todo_tesk/features/test/ui/widget/build_top_text_add_task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late TaskBloc bloc;
  @override
  void initState() {
    bloc = TaskBloc.get(context);
    super.initState();
  }

  @override
  void dispose() {
    bloc.titleController.clear();
    bloc.subtitleController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 30,
            ),
          ),
        ),
        body: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BuildTopTextAddTask(),
                BuildMiddleTextFieldsAddTask(),
                BuildBottomButtonsAddTask(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
