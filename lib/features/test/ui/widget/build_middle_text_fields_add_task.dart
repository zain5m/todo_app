import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/config/themes/app_colors.dart';
import 'package:todo_tesk/core/config/themes/app_theme.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_bloc.dart';

class BuildMiddleTextFieldsAddTask extends StatefulWidget {
  const BuildMiddleTextFieldsAddTask({super.key});

  @override
  State<BuildMiddleTextFieldsAddTask> createState() =>
      _BuildMiddleTextFieldsAddTaskState();
}

class _BuildMiddleTextFieldsAddTaskState
    extends State<BuildMiddleTextFieldsAddTask> {
  final FocusNode focusNode = FocusNode();
  Color color = Colors.grey;
  late TaskBloc bloc;

  @override
  void initState() {
    bloc = TaskBloc.get(context);
    focusNode.addListener(_changeColor);
    super.initState();
  }

  _changeColor() {
    if (focusNode.hasFocus) {
      color = AppColors.primary;
    } else {
      color = Colors.grey;
    }
    setState(() {});
  }

  @override
  void dispose() {
    focusNode.removeListener(_changeColor);
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: bloc.formKey,
      child: SizedBox(
        width: double.infinity,
        height: ScreenUtil().screenHeight / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: REdgeInsetsDirectional.only(start: 30),
              child: Text(
                LocaleKeys.titleOfTitleTextField.tr(),
                style: textTheme.headlineMedium,
              ),
            ),
            Container(
              width: ScreenUtil().screenWidth,
              margin: REdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                title: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field is required";
                    }
                    return null;
                  },
                  controller: bloc.titleController,
                  // controller: _titleController,
                  maxLines: 6,
                  minLines: 1,
                  keyboardType: TextInputType.text,
                  cursorHeight: 25,
                  style:
                      textTheme.headlineMedium!.copyWith(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            Container(
              width: ScreenUtil().screenWidth,
              margin: REdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                title: TextFormField(
                  focusNode: focusNode,
                  controller: bloc.subtitleController,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 6,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    // TODO: Aligent prefixIcon
                    prefixIcon: const Icon(
                      Icons.bookmark_border_outlined,
                    ),
                    prefixIconColor: color,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    hintText: LocaleKeys.addNote,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
