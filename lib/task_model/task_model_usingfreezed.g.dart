// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model_usingfreezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      issues: (json['issues'] as List<dynamic>?)
              ?.map((e) => Issues.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'issues': instance.issues,
    };

_$_Issues _$$_IssuesFromJson(Map<String, dynamic> json) => _$_Issues(
      id: json['id'] as String? ?? "",
      key: json['key'] as String? ?? "",
      assigneewithValues: (json['assigneewithValues'] as List<dynamic>?)
              ?.map(
                  (e) => AssigneewithValues.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fields: json['fields'] == null
          ? const Fields()
          : Fields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IssuesToJson(_$_Issues instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'assigneewithValues': instance.assigneewithValues,
      'fields': instance.fields,
    };

_$_Fields _$$_FieldsFromJson(Map<String, dynamic> json) => _$_Fields(
      timeestimate: json['timeestimate'] as int? ?? -1,
      status: json['status'] == null
          ? const Status()
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      project: json['project'] == null
          ? const Project()
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      priority: json['priority'] == null
          ? const Priority()
          : Priority.fromJson(json['priority'] as Map<String, dynamic>),
      progress: json['progress'] == null
          ? const Progress()
          : Progress.fromJson(json['progress'] as Map<String, dynamic>),
      assignee: json['assignee'] == null
          ? const Assignee()
          : Assignee.fromJson(json['assignee'] as Map<String, dynamic>),
      components: (json['components'] as List<dynamic>?)
              ?.map((e) => Components.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      creator: json['creator'] == null
          ? const Assignee()
          : Assignee.fromJson(json['creator'] as Map<String, dynamic>),
      reporter: json['reporter'] == null
          ? const Assignee()
          : Assignee.fromJson(json['reporter'] as Map<String, dynamic>),
      timespent: json['timespent'] as int? ?? -1,
      created: json['created'] as String? ?? "",
      updated: json['updated'] as String? ?? "",
      summary: json['summary'] as String? ?? "",
      duedate: json['duedate'] as String? ?? "",
      timeSpentFormatted: json['timeSpentFormatted'] as String? ?? "",
    );

Map<String, dynamic> _$$_FieldsToJson(_$_Fields instance) => <String, dynamic>{
      'timeestimate': instance.timeestimate,
      'status': instance.status,
      'project': instance.project,
      'priority': instance.priority,
      'progress': instance.progress,
      'assignee': instance.assignee,
      'components': instance.components,
      'creator': instance.creator,
      'reporter': instance.reporter,
      'timespent': instance.timespent,
      'created': instance.created,
      'updated': instance.updated,
      'summary': instance.summary,
      'duedate': instance.duedate,
      'timeSpentFormatted': instance.timeSpentFormatted,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      name: json['name'] as String? ?? "",
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      id: json['id'] as String? ?? "",
      key: json['key'] as String? ?? "",
      name: json['name'] as String? ?? "",
      projectTypeKey: json['projectTypeKey'] as String? ?? "",
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'projectTypeKey': instance.projectTypeKey,
    };

_$_Priority _$$_PriorityFromJson(Map<String, dynamic> json) => _$_Priority(
      iconUrl: json['iconUrl'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$_PriorityToJson(_$_Priority instance) =>
    <String, dynamic>{
      'iconUrl': instance.iconUrl,
      'name': instance.name,
    };

_$_Progress _$$_ProgressFromJson(Map<String, dynamic> json) => _$_Progress(
      percent: json['percent'] as int? ?? -1,
    );

Map<String, dynamic> _$$_ProgressToJson(_$_Progress instance) =>
    <String, dynamic>{
      'percent': instance.percent,
    };

_$_Assignee _$$_AssigneeFromJson(Map<String, dynamic> json) => _$_Assignee(
      name: json['name'] as String? ?? "",
      key: json['key'] as String? ?? "",
      emailAddress: json['emailAddress'] as String? ?? "",
      displayName: json['displayName'] as String? ?? "",
      active: json['active'] as bool? ?? false,
      timeZone: json['timeZone'] as String? ?? "",
    );

Map<String, dynamic> _$$_AssigneeToJson(_$_Assignee instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'emailAddress': instance.emailAddress,
      'displayName': instance.displayName,
      'active': instance.active,
      'timeZone': instance.timeZone,
    };

_$_AssigneewithValues _$$_AssigneewithValuesFromJson(
        Map<String, dynamic> json) =>
    _$_AssigneewithValues(
      assigneKey: json['assigneKey'] as String? ?? "",
      totalTimeSpentt: json['totalTimeSpentt'] as String? ?? "",
      timeInHours: json['timeInHours'] as int? ?? -1,
      email: json['email'] as String? ?? "",
      date: json['date'] as String? ?? "",
      name: json['name'] as String? ?? "",
      eachIssues: (json['eachIssues'] as List<dynamic>?)
              ?.map((e) => Issues.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AssigneewithValuesToJson(
        _$_AssigneewithValues instance) =>
    <String, dynamic>{
      'assigneKey': instance.assigneKey,
      'totalTimeSpentt': instance.totalTimeSpentt,
      'timeInHours': instance.timeInHours,
      'email': instance.email,
      'date': instance.date,
      'name': instance.name,
      'eachIssues': instance.eachIssues,
    };

_$_Components _$$_ComponentsFromJson(Map<String, dynamic> json) =>
    _$_Components(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$_ComponentsToJson(_$_Components instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
