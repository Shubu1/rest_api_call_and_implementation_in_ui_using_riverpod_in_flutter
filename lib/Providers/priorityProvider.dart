import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/Providers/dio_provider.dart';
import 'package:task_manager/task_model/task_model_usingfreezed.dart';

final priorityProvider = FutureProvider.autoDispose<List<Priority>>(
  (ref) async {
    return PriorityProvider(ref).statusList();
  },
);

class PriorityProvider {
  late Ref ref;
  PriorityProvider(this.ref);
  Future<List<Priority>> statusList() async {
    try {
      final response =
          await ref.read(dioProvider).get('http://10.13.170.32:7082/task/list');
      if (response.data != null && response.data.isNotEmpty) {
        print(response.data);
        TaskModel responseList = TaskModel.fromJson(response.data);
        print(responseList.issues);
        Map<String, List<Priority>> uniquePriorityNames = {};
        for (Issues filterData in responseList.issues) {
          String priorityName = filterData.fields.priority.name;
          if (uniquePriorityNames.containsKey(priorityName)) {
            uniquePriorityNames[priorityName]!.add(filterData.fields.priority);
          } else {
            uniquePriorityNames[priorityName] = [filterData.fields.priority];
          }
        }
        List<Priority> filteredDatas = uniquePriorityNames.values
            .expand((priority) => priority)
            .toSet()
            .toList();

        return filteredDatas;
      } else {
        return [];
      }
    } on Error catch (error) {
      debugPrint("Error $error");
      rethrow;
    }
  }
}
