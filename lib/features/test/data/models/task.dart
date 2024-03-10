import 'package:hive/hive.dart';
import 'package:todo_tesk/core/services/local/hive/hive_constants.dart';
import 'package:uuid/uuid.dart';

part 'task.g.dart';

@HiveType(typeId: HiveConstants.todoItem)
class LocalTaskModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String subtitle;
  @HiveField(3)
  final DateTime createdAtTime;
  @HiveField(4)
  final DateTime createdAtDate;
  @HiveField(5)
  bool isCompleted;
  LocalTaskModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.createdAtTime,
    required this.createdAtDate,
    required this.isCompleted,
  });

  /// create new Task
  factory LocalTaskModel.create({
    required String title,
    required String subtitle,
    DateTime? createdAtTime,
    DateTime? createdAtDate,
  }) =>
      LocalTaskModel(
        id: const Uuid().v1(),
        title: title,
        subtitle: subtitle,
        createdAtTime: DateTime.now(),
        isCompleted: false,
        createdAtDate: DateTime.now(),
      );
}
