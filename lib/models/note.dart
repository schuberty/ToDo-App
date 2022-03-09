import 'package:hive/hive.dart';

part 'note.g.dart';

@HiveType(typeId: 1)
class Note extends HiveObject {
  @HiveField(0)
  late String title;
  @HiveField(1)
  late String description;
  @HiveField(2)
  late bool isCompleted;

  Note({
    required this.title,
    required this.description,
  }) : isCompleted = false;
}
