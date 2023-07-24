import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/Providers/dio_provider.dart';
import 'package:task_manager/task_model/task_model_usingfreezed.dart';

final taskProvider = FutureProvider.autoDispose<List<AssigneewithValues>>(
  (ref) async {
    return TaskProvider(ref).taskList();
  },
);

class TaskProvider {
  late Ref ref;
  TaskProvider(this.ref);

  Future<List<AssigneewithValues>> taskList() async {
    try {
      final response =
          await ref.read(dioProvider).get('http://10.13.170.32:7082/task/list');

      if (response.data != null && response.data.isNotEmpty) {
        print(response.data);
        TaskModel responseList = TaskModel.fromJson(response.data);
        print(responseList.issues);
        final Map<String, int> groupedTaskswithTimeSpent = {};
        final Map<String, List<Issues>> assigneeInfoMap = {};
        Map<String, String> assigneNames = {};
        Map<String, String> assigneEmail = {};
        Map<String, String> assigneeDate = {};
        for (Issues taskData in responseList.issues) {
          String email = taskData.fields.assignee.emailAddress;
          String name = taskData.fields.assignee.displayName;
          String createdDatee = taskData.fields.created;
          // final issues = taskModel.issues;
          int timeSpent = taskData.fields.timespent;
          String assigneeKey = taskData.fields.assignee.key;
          if (groupedTaskswithTimeSpent.containsKey(assigneeKey)) {
            groupedTaskswithTimeSpent[assigneeKey] =
                groupedTaskswithTimeSpent[assigneeKey]! + timeSpent;
          } else {
            groupedTaskswithTimeSpent[assigneeKey] = timeSpent;
          }
          if (assigneeInfoMap.containsKey(assigneeKey)) {
            // assigneeInfoMap.clear();
            assigneeInfoMap[assigneeKey]!.add(taskData);
          } else {
            //assigneeInfoMap.clear();
            assigneeInfoMap[assigneeKey] = [taskData];
          }
          assigneNames[assigneeKey] = name.toString();
          assigneEmail[assigneeKey] = email.toString();
          assigneeDate[assigneeKey] = createdDatee.toString();
        }
        List<AssigneewithValues> assigneeTimeSpentList =
            groupedTaskswithTimeSpent.entries.map((entry) {
          int timeSpentInSeconds = entry.value;
          int hours = timeSpentInSeconds ~/ 3600;
          int minutes = (timeSpentInSeconds % 3600) ~/ 60;
          int seconds = timeSpentInSeconds % 60;
          //   double totalTimeInHours = hours + (minutes / 60) + (seconds / 3600);

          String totalTimeSpent = '${hours} Hr ${minutes} min ${seconds} sec';
          List<Issues> particularIssues = assigneeInfoMap[entry.key] ?? [];
          String assigneeName = assigneNames[entry.key] ?? '';
          String assigneeEmail = assigneEmail[entry.key] ?? '';
          String assigneCreatedDate = assigneeDate[entry.key] ?? '';

          AssigneewithValues assignee = AssigneewithValues(
            assigneKey: entry.key,
            timeInHours: hours,
            totalTimeSpentt: totalTimeSpent,
            name: assigneeName,
            email: assigneeEmail,
            eachIssues: particularIssues,
            date: assigneCreatedDate,
          );
          debugPrint(assignee.assigneKey);
          debugPrint(assignee.totalTimeSpentt);
          return assignee;
          // 'assigneeKey': entry.key,
          // 'timespent': totalTimeSpent,
        }).toList();
        List<Project> filterData() {
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
        }

        debugPrint(filterData().toString());
        List<Components> filterComponents() {
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
        }

        debugPrint(filterComponents().toString());

        return assigneeTimeSpentList;
        // return assigneeTimeSpentList.toList();
      } else {
        return [];
      }
    } on Error catch (error) {
      debugPrint("Error $error");
      rethrow;
    }
  }
}
