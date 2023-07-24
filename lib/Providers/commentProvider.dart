import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/Providers/dio_provider.dart';

import '../task_model/task_model_usingfreezed.dart';

final componentProvider = FutureProvider.autoDispose<List<Components>>(
  (ref) async {
    return ComponentProvider(ref).statusList();
  },
);

class ComponentProvider {
  late Ref ref;
  ComponentProvider(this.ref);
  Future<List<Components>> statusList() async {
    try {
      final response =
          await ref.read(dioProvider).get('http://10.13.170.32:7082/task/list');
      if (response.data != null && response.data.isNotEmpty) {
        print(response.data);
        TaskModel responseList = TaskModel.fromJson(response.data);
        print(responseList.issues);
        Map<String, List<Components>> uniqueComponents = {};
        for (Issues filterData in responseList.issues) {
          List<Components> components = filterData.fields.components;
          for (Components component in components) {
            if (uniqueComponents.containsKey(component.id)) {
              uniqueComponents[component.id]!.add(component);
            } else {
              uniqueComponents[component.id] = [component];
            }
          }
        }
        List<Components> filteruniqueComponents =
            uniqueComponents.values.expand((comps) => comps).toSet().toList();
        return filteruniqueComponents;
      } else {
        return [];
      }
    } on Error catch (error) {
      debugPrint("Error $error");
      rethrow;
    }
  }
}
