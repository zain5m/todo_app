import 'dart:core';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:path_provider/path_provider.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';

import 'hive_boxes.dart';
import 'hive_constants.dart';

abstract class HiveInitializer {
  static Future<void> initialize() async {
    var documentsDirectory = await getApplicationDocumentsDirectory();

    Hive.init(documentsDirectory.path);
    bool isNotRegistered(int typeId) {
      return !Hive.isAdapterRegistered(typeId);
    }

    if (isNotRegistered(HiveConstants.todoItem)) {
      Hive.registerAdapter<LocalTaskModel>(LocalTaskModelAdapter());
    }
  }

  static Future<Box<LocalTaskModel>> initBox() {
    return Hive.openBox<LocalTaskModel>(HiveBoxes.todoBox);
  }
}
