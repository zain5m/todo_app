// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "error_add_task": "حدث خطا أثناء اضافة المهمة",
  "success_add_task": "تم اضافة المهمة بنجاح",
  "error_delete_task": "حدث خطا أثناء حذف المهمة",
  "success_delete_task": "تم حذف المهمة بنجاح",
  "error_update_task": "حدث خطا أثناء تحديث المهمة",
  "success_update_task": "تم تحذيث المهمة بنجاح",
  "error_get_task": "حدث خطا أثناء جلب البيانات",
  "success_get_task": "تم جلب البيانات بنجاح",
  "myTitle": "مهماتي",
  "new_task": "مهماتي الجديدة ✨",
  "done_task": "مهماتي المكتلة 💫",
  "addNewTask": "اضافة مهمة",
  "task": "جديدة",
  "emptyTask": "لا يوجد مهام",
  "emptyDoneTask": "لا يوجد مهام مكتملة",
  "emptyNewTask": "لا يوجد مهام جديدة",
  "titleOfTitleTextField": "ما هي خططك😇?",
  "addNote": "اضافة ملاحظة",
  "time": "الوقت",
  "date": "التاريخ",
  "deleteTask": "حذف المهمة",
  "addTask": "اضافة مهمة جديدة",
  "oopsMsg": "Oops!",
  "areYouSure": "هل انت متاكد !",
  "this_task_was_deleted": "تم حذف هذه المهمة"
};
static const Map<String,dynamic> en = {
  "error_add_task": "An error occurred while adding the task",
  "success_add_task": "The task has been added successfully",
  "error_delete_task": "An error occurred while deleting the task",
  "success_delete_task": "The task was deleted successfully",
  "error_update_task": "An error occurred while updating the task",
  "success_update_task": "The task has been updated successfully",
  "error_get_task": "An error occurred while fetching data",
  "success_get_task": "Data fetched successfully",
  "myTitle": "My Tasks",
  "new_task": "New Tasks ✨",
  "done_task": "Done Tasks 💫",
  "addNewTask": "Add New ",
  "task": "Task",
  "emptyTask": "There are no tasks.",
  "emptyDoneTask": "There are no Done tasks.",
  "emptyNewTask": "There are no New tasks.",
  "titleOfTitleTextField": "What are you planing😇?",
  "addNote": "Add Note",
  "time": "Time",
  "date": "Date",
  "deleteTask": "Delete Task",
  "addTask": "Add Task",
  "oopsMsg": "Oops!",
  "areYouSure": "Are You Sure?",
  "this_task_was_deleted": "this task was deleted"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
