import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model_usingfreezed.freezed.dart';
part 'task_model_usingfreezed.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @Default([]) List<Issues> issues,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
class Issues with _$Issues {
  factory Issues(
      {@Default("") String id,
      @Default("") String key,
      @Default([]) List<AssigneewithValues> assigneewithValues,
      @Default(Fields()) Fields fields}) = _Issues;

  factory Issues.fromJson(Map<String, dynamic> json) => _$IssuesFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @Default(-1) int timeestimate,
    @Default(Status()) Status status,
    @Default(Project()) Project project,
    @Default(Priority()) Priority priority,
    @Default(Progress()) Progress progress,
    @Default(Assignee()) Assignee assignee,
    @Default([]) List<Components> components,
    @Default(Assignee()) Assignee creator,
    @Default(Assignee()) Assignee reporter,
    @Default(-1) int timespent,
    @Default("") String created,
    @Default("") String updated,
    @Default("") String summary,
    @Default("") String duedate,
    @Default("") String timeSpentFormatted,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    @Default("") String name,
    @Default("") String id,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    @Default("") String id,
    @Default("") String key,
    @Default("") String name,
    @Default("") String projectTypeKey,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class Priority with _$Priority {
  const factory Priority({
    @Default("") String iconUrl,
    @Default("") String name,
  }) = _Priority;

  factory Priority.fromJson(Map<String, dynamic> json) =>
      _$PriorityFromJson(json);
}

@freezed
class Progress with _$Progress {
  const factory Progress({
    @Default(-1) int percent,
  }) = _Progress;

  factory Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);
}

@freezed
class Assignee with _$Assignee {
  const factory Assignee({
    @Default("") String name,
    @Default("") String key,
    @Default("") String emailAddress,
    @Default("") String displayName,
    @Default(false) bool active,
    @Default("") String timeZone,
  }) = _Assignee;

  factory Assignee.fromJson(Map<String, dynamic> json) =>
      _$AssigneeFromJson(json);
}

@freezed
class AssigneewithValues with _$AssigneewithValues {
  const factory AssigneewithValues({
    @Default("") String assigneKey,
    @Default("") String totalTimeSpentt,
    @Default(-1) int timeInHours,
    @Default("") String email,
    @Default("") String date,
    @Default("") String name,
    @Default([]) List<Issues> eachIssues,
  }) = _AssigneewithValues;

  factory AssigneewithValues.fromJson(Map<String, dynamic> json) =>
      _$AssigneewithValuesFromJson(json);
}

@freezed
class Components with _$Components {
  const factory Components({
    @Default("") String id,
    @Default("") String name,
  }) = _Components;

  factory Components.fromJson(Map<String, dynamic> json) =>
      _$ComponentsFromJson(json);
}
