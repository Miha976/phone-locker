import 'package:isar/isar.dart';
part 'white_list.g.dart';


@collection
class WhiteList {
  Id id = Isar.autoIncrement;
  String? packageName;
}