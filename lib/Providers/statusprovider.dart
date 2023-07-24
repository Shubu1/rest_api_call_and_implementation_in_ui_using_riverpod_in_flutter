import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/Providers/dio_provider.dart';

import '../task_model/task_model_usingfreezed.dart';

final projectProvider = FutureProvider.autoDispose<List<Project>>(
  (ref) async {
    return StatusProvider(ref).statusList();
  },
);

class StatusProvider {
  late Ref ref;
  StatusProvider(this.ref);
  Future<List<Project>> statusList() async {
    try {
      final response =
          await ref.read(dioProvider).get('http://10.13.170.32:7082/task/list');
      if (response.data != null && response.data.isNotEmpty) {
        print(response.data);
        TaskModel responseList = TaskModel.fromJson(response.data);
        print(responseList.issues);
        Map<String, List<Project>> uniqueProjectKeys = {};
        for (Issues filterData in responseList.issues) {
          String projectKey = filterData.fields.project.key;
          if (uniqueProjectKeys.containsKey(projectKey)) {
            uniqueProjectKeys[projectKey]!.add(filterData.fields.project);
          } else {
            uniqueProjectKeys[projectKey] = [filterData.fields.project];
          }
        }
        List<Project> filteredDatas = uniqueProjectKeys.values
            .expand((projects) => projects)
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
