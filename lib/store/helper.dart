import 'package:tuple/tuple.dart';

Tuple2<String, List<dynamic>> makeSingleCondition(
    Map<String, dynamic> conditions) {
  for (MapEntry<String, dynamic> cond in conditions.entries) {
    if (cond.value != null) {
      return Tuple2('${cond.key} = ?', [cond.value]);
    }
  }
  return Tuple2('1 > ?', [2]);
}
