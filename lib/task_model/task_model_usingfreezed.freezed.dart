// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model_usingfreezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  List<Issues> get issues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call({List<Issues> issues});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issues = null,
  }) {
    return _then(_value.copyWith(
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issues>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Issues> issues});
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issues = null,
  }) {
    return _then(_$_TaskModel(
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issues>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel({final List<Issues> issues = const []}) : _issues = issues;

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  final List<Issues> _issues;
  @override
  @JsonKey()
  List<Issues> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  String toString() {
    return 'TaskModel(issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            const DeepCollectionEquality().equals(other._issues, _issues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_issues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel({final List<Issues> issues}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  List<Issues> get issues;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Issues _$IssuesFromJson(Map<String, dynamic> json) {
  return _Issues.fromJson(json);
}

/// @nodoc
mixin _$Issues {
  String get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  List<AssigneewithValues> get assigneewithValues =>
      throw _privateConstructorUsedError;
  Fields get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssuesCopyWith<Issues> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesCopyWith<$Res> {
  factory $IssuesCopyWith(Issues value, $Res Function(Issues) then) =
      _$IssuesCopyWithImpl<$Res, Issues>;
  @useResult
  $Res call(
      {String id,
      String key,
      List<AssigneewithValues> assigneewithValues,
      Fields fields});

  $FieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$IssuesCopyWithImpl<$Res, $Val extends Issues>
    implements $IssuesCopyWith<$Res> {
  _$IssuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? assigneewithValues = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      assigneewithValues: null == assigneewithValues
          ? _value.assigneewithValues
          : assigneewithValues // ignore: cast_nullable_to_non_nullable
              as List<AssigneewithValues>,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Fields,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldsCopyWith<$Res> get fields {
    return $FieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IssuesCopyWith<$Res> implements $IssuesCopyWith<$Res> {
  factory _$$_IssuesCopyWith(_$_Issues value, $Res Function(_$_Issues) then) =
      __$$_IssuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String key,
      List<AssigneewithValues> assigneewithValues,
      Fields fields});

  @override
  $FieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$_IssuesCopyWithImpl<$Res>
    extends _$IssuesCopyWithImpl<$Res, _$_Issues>
    implements _$$_IssuesCopyWith<$Res> {
  __$$_IssuesCopyWithImpl(_$_Issues _value, $Res Function(_$_Issues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? assigneewithValues = null,
    Object? fields = null,
  }) {
    return _then(_$_Issues(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      assigneewithValues: null == assigneewithValues
          ? _value._assigneewithValues
          : assigneewithValues // ignore: cast_nullable_to_non_nullable
              as List<AssigneewithValues>,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Fields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Issues implements _Issues {
  _$_Issues(
      {this.id = "",
      this.key = "",
      final List<AssigneewithValues> assigneewithValues = const [],
      this.fields = const Fields()})
      : _assigneewithValues = assigneewithValues;

  factory _$_Issues.fromJson(Map<String, dynamic> json) =>
      _$$_IssuesFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String key;
  final List<AssigneewithValues> _assigneewithValues;
  @override
  @JsonKey()
  List<AssigneewithValues> get assigneewithValues {
    if (_assigneewithValues is EqualUnmodifiableListView)
      return _assigneewithValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assigneewithValues);
  }

  @override
  @JsonKey()
  final Fields fields;

  @override
  String toString() {
    return 'Issues(id: $id, key: $key, assigneewithValues: $assigneewithValues, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Issues &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality()
                .equals(other._assigneewithValues, _assigneewithValues) &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key,
      const DeepCollectionEquality().hash(_assigneewithValues), fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IssuesCopyWith<_$_Issues> get copyWith =>
      __$$_IssuesCopyWithImpl<_$_Issues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssuesToJson(
      this,
    );
  }
}

abstract class _Issues implements Issues {
  factory _Issues(
      {final String id,
      final String key,
      final List<AssigneewithValues> assigneewithValues,
      final Fields fields}) = _$_Issues;

  factory _Issues.fromJson(Map<String, dynamic> json) = _$_Issues.fromJson;

  @override
  String get id;
  @override
  String get key;
  @override
  List<AssigneewithValues> get assigneewithValues;
  @override
  Fields get fields;
  @override
  @JsonKey(ignore: true)
  _$$_IssuesCopyWith<_$_Issues> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  int get timeestimate => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Project get project => throw _privateConstructorUsedError;
  Priority get priority => throw _privateConstructorUsedError;
  Progress get progress => throw _privateConstructorUsedError;
  Assignee get assignee => throw _privateConstructorUsedError;
  List<Components> get components => throw _privateConstructorUsedError;
  Assignee get creator => throw _privateConstructorUsedError;
  Assignee get reporter => throw _privateConstructorUsedError;
  int get timespent => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get duedate => throw _privateConstructorUsedError;
  String get timeSpentFormatted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsCopyWith<Fields> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsCopyWith<$Res> {
  factory $FieldsCopyWith(Fields value, $Res Function(Fields) then) =
      _$FieldsCopyWithImpl<$Res, Fields>;
  @useResult
  $Res call(
      {int timeestimate,
      Status status,
      Project project,
      Priority priority,
      Progress progress,
      Assignee assignee,
      List<Components> components,
      Assignee creator,
      Assignee reporter,
      int timespent,
      String created,
      String updated,
      String summary,
      String duedate,
      String timeSpentFormatted});

  $StatusCopyWith<$Res> get status;
  $ProjectCopyWith<$Res> get project;
  $PriorityCopyWith<$Res> get priority;
  $ProgressCopyWith<$Res> get progress;
  $AssigneeCopyWith<$Res> get assignee;
  $AssigneeCopyWith<$Res> get creator;
  $AssigneeCopyWith<$Res> get reporter;
}

/// @nodoc
class _$FieldsCopyWithImpl<$Res, $Val extends Fields>
    implements $FieldsCopyWith<$Res> {
  _$FieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeestimate = null,
    Object? status = null,
    Object? project = null,
    Object? priority = null,
    Object? progress = null,
    Object? assignee = null,
    Object? components = null,
    Object? creator = null,
    Object? reporter = null,
    Object? timespent = null,
    Object? created = null,
    Object? updated = null,
    Object? summary = null,
    Object? duedate = null,
    Object? timeSpentFormatted = null,
  }) {
    return _then(_value.copyWith(
      timeestimate: null == timeestimate
          ? _value.timeestimate
          : timeestimate // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Progress,
      assignee: null == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as Assignee,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Components>,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Assignee,
      reporter: null == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as Assignee,
      timespent: null == timespent
          ? _value.timespent
          : timespent // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      duedate: null == duedate
          ? _value.duedate
          : duedate // ignore: cast_nullable_to_non_nullable
              as String,
      timeSpentFormatted: null == timeSpentFormatted
          ? _value.timeSpentFormatted
          : timeSpentFormatted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriorityCopyWith<$Res> get priority {
    return $PriorityCopyWith<$Res>(_value.priority, (value) {
      return _then(_value.copyWith(priority: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgressCopyWith<$Res> get progress {
    return $ProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssigneeCopyWith<$Res> get assignee {
    return $AssigneeCopyWith<$Res>(_value.assignee, (value) {
      return _then(_value.copyWith(assignee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssigneeCopyWith<$Res> get creator {
    return $AssigneeCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssigneeCopyWith<$Res> get reporter {
    return $AssigneeCopyWith<$Res>(_value.reporter, (value) {
      return _then(_value.copyWith(reporter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FieldsCopyWith<$Res> implements $FieldsCopyWith<$Res> {
  factory _$$_FieldsCopyWith(_$_Fields value, $Res Function(_$_Fields) then) =
      __$$_FieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timeestimate,
      Status status,
      Project project,
      Priority priority,
      Progress progress,
      Assignee assignee,
      List<Components> components,
      Assignee creator,
      Assignee reporter,
      int timespent,
      String created,
      String updated,
      String summary,
      String duedate,
      String timeSpentFormatted});

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $ProjectCopyWith<$Res> get project;
  @override
  $PriorityCopyWith<$Res> get priority;
  @override
  $ProgressCopyWith<$Res> get progress;
  @override
  $AssigneeCopyWith<$Res> get assignee;
  @override
  $AssigneeCopyWith<$Res> get creator;
  @override
  $AssigneeCopyWith<$Res> get reporter;
}

/// @nodoc
class __$$_FieldsCopyWithImpl<$Res>
    extends _$FieldsCopyWithImpl<$Res, _$_Fields>
    implements _$$_FieldsCopyWith<$Res> {
  __$$_FieldsCopyWithImpl(_$_Fields _value, $Res Function(_$_Fields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeestimate = null,
    Object? status = null,
    Object? project = null,
    Object? priority = null,
    Object? progress = null,
    Object? assignee = null,
    Object? components = null,
    Object? creator = null,
    Object? reporter = null,
    Object? timespent = null,
    Object? created = null,
    Object? updated = null,
    Object? summary = null,
    Object? duedate = null,
    Object? timeSpentFormatted = null,
  }) {
    return _then(_$_Fields(
      timeestimate: null == timeestimate
          ? _value.timeestimate
          : timeestimate // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Progress,
      assignee: null == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as Assignee,
      components: null == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<Components>,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Assignee,
      reporter: null == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as Assignee,
      timespent: null == timespent
          ? _value.timespent
          : timespent // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      duedate: null == duedate
          ? _value.duedate
          : duedate // ignore: cast_nullable_to_non_nullable
              as String,
      timeSpentFormatted: null == timeSpentFormatted
          ? _value.timeSpentFormatted
          : timeSpentFormatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fields implements _Fields {
  const _$_Fields(
      {this.timeestimate = -1,
      this.status = const Status(),
      this.project = const Project(),
      this.priority = const Priority(),
      this.progress = const Progress(),
      this.assignee = const Assignee(),
      final List<Components> components = const [],
      this.creator = const Assignee(),
      this.reporter = const Assignee(),
      this.timespent = -1,
      this.created = "",
      this.updated = "",
      this.summary = "",
      this.duedate = "",
      this.timeSpentFormatted = ""})
      : _components = components;

  factory _$_Fields.fromJson(Map<String, dynamic> json) =>
      _$$_FieldsFromJson(json);

  @override
  @JsonKey()
  final int timeestimate;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Project project;
  @override
  @JsonKey()
  final Priority priority;
  @override
  @JsonKey()
  final Progress progress;
  @override
  @JsonKey()
  final Assignee assignee;
  final List<Components> _components;
  @override
  @JsonKey()
  List<Components> get components {
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  @JsonKey()
  final Assignee creator;
  @override
  @JsonKey()
  final Assignee reporter;
  @override
  @JsonKey()
  final int timespent;
  @override
  @JsonKey()
  final String created;
  @override
  @JsonKey()
  final String updated;
  @override
  @JsonKey()
  final String summary;
  @override
  @JsonKey()
  final String duedate;
  @override
  @JsonKey()
  final String timeSpentFormatted;

  @override
  String toString() {
    return 'Fields(timeestimate: $timeestimate, status: $status, project: $project, priority: $priority, progress: $progress, assignee: $assignee, components: $components, creator: $creator, reporter: $reporter, timespent: $timespent, created: $created, updated: $updated, summary: $summary, duedate: $duedate, timeSpentFormatted: $timeSpentFormatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fields &&
            (identical(other.timeestimate, timeestimate) ||
                other.timeestimate == timeestimate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.assignee, assignee) ||
                other.assignee == assignee) &&
            const DeepCollectionEquality()
                .equals(other._components, _components) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter) &&
            (identical(other.timespent, timespent) ||
                other.timespent == timespent) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.duedate, duedate) || other.duedate == duedate) &&
            (identical(other.timeSpentFormatted, timeSpentFormatted) ||
                other.timeSpentFormatted == timeSpentFormatted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeestimate,
      status,
      project,
      priority,
      progress,
      assignee,
      const DeepCollectionEquality().hash(_components),
      creator,
      reporter,
      timespent,
      created,
      updated,
      summary,
      duedate,
      timeSpentFormatted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldsCopyWith<_$_Fields> get copyWith =>
      __$$_FieldsCopyWithImpl<_$_Fields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldsToJson(
      this,
    );
  }
}

abstract class _Fields implements Fields {
  const factory _Fields(
      {final int timeestimate,
      final Status status,
      final Project project,
      final Priority priority,
      final Progress progress,
      final Assignee assignee,
      final List<Components> components,
      final Assignee creator,
      final Assignee reporter,
      final int timespent,
      final String created,
      final String updated,
      final String summary,
      final String duedate,
      final String timeSpentFormatted}) = _$_Fields;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$_Fields.fromJson;

  @override
  int get timeestimate;
  @override
  Status get status;
  @override
  Project get project;
  @override
  Priority get priority;
  @override
  Progress get progress;
  @override
  Assignee get assignee;
  @override
  List<Components> get components;
  @override
  Assignee get creator;
  @override
  Assignee get reporter;
  @override
  int get timespent;
  @override
  String get created;
  @override
  String get updated;
  @override
  String get summary;
  @override
  String get duedate;
  @override
  String get timeSpentFormatted;
  @override
  @JsonKey(ignore: true)
  _$$_FieldsCopyWith<_$_Fields> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_Status>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_Status(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status({this.name = "", this.id = ""});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String id;

  @override
  String toString() {
    return 'Status(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status({final String name, final String id}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get projectTypeKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({String id, String key, String name, String projectTypeKey});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? projectTypeKey = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      projectTypeKey: null == projectTypeKey
          ? _value.projectTypeKey
          : projectTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String key, String name, String projectTypeKey});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? projectTypeKey = null,
  }) {
    return _then(_$_Project(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      projectTypeKey: null == projectTypeKey
          ? _value.projectTypeKey
          : projectTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project implements _Project {
  const _$_Project(
      {this.id = "", this.key = "", this.name = "", this.projectTypeKey = ""});

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String projectTypeKey;

  @override
  String toString() {
    return 'Project(id: $id, key: $key, name: $name, projectTypeKey: $projectTypeKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.projectTypeKey, projectTypeKey) ||
                other.projectTypeKey == projectTypeKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, projectTypeKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {final String id,
      final String key,
      final String name,
      final String projectTypeKey}) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String get id;
  @override
  String get key;
  @override
  String get name;
  @override
  String get projectTypeKey;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}

Priority _$PriorityFromJson(Map<String, dynamic> json) {
  return _Priority.fromJson(json);
}

/// @nodoc
mixin _$Priority {
  String get iconUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriorityCopyWith<Priority> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityCopyWith<$Res> {
  factory $PriorityCopyWith(Priority value, $Res Function(Priority) then) =
      _$PriorityCopyWithImpl<$Res, Priority>;
  @useResult
  $Res call({String iconUrl, String name});
}

/// @nodoc
class _$PriorityCopyWithImpl<$Res, $Val extends Priority>
    implements $PriorityCopyWith<$Res> {
  _$PriorityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriorityCopyWith<$Res> implements $PriorityCopyWith<$Res> {
  factory _$$_PriorityCopyWith(
          _$_Priority value, $Res Function(_$_Priority) then) =
      __$$_PriorityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iconUrl, String name});
}

/// @nodoc
class __$$_PriorityCopyWithImpl<$Res>
    extends _$PriorityCopyWithImpl<$Res, _$_Priority>
    implements _$$_PriorityCopyWith<$Res> {
  __$$_PriorityCopyWithImpl(
      _$_Priority _value, $Res Function(_$_Priority) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? name = null,
  }) {
    return _then(_$_Priority(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Priority implements _Priority {
  const _$_Priority({this.iconUrl = "", this.name = ""});

  factory _$_Priority.fromJson(Map<String, dynamic> json) =>
      _$$_PriorityFromJson(json);

  @override
  @JsonKey()
  final String iconUrl;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Priority(iconUrl: $iconUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Priority &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iconUrl, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriorityCopyWith<_$_Priority> get copyWith =>
      __$$_PriorityCopyWithImpl<_$_Priority>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriorityToJson(
      this,
    );
  }
}

abstract class _Priority implements Priority {
  const factory _Priority({final String iconUrl, final String name}) =
      _$_Priority;

  factory _Priority.fromJson(Map<String, dynamic> json) = _$_Priority.fromJson;

  @override
  String get iconUrl;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PriorityCopyWith<_$_Priority> get copyWith =>
      throw _privateConstructorUsedError;
}

Progress _$ProgressFromJson(Map<String, dynamic> json) {
  return _Progress.fromJson(json);
}

/// @nodoc
mixin _$Progress {
  int get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressCopyWith<Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressCopyWith<$Res> {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) then) =
      _$ProgressCopyWithImpl<$Res, Progress>;
  @useResult
  $Res call({int percent});
}

/// @nodoc
class _$ProgressCopyWithImpl<$Res, $Val extends Progress>
    implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
  }) {
    return _then(_value.copyWith(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgressCopyWith<$Res> implements $ProgressCopyWith<$Res> {
  factory _$$_ProgressCopyWith(
          _$_Progress value, $Res Function(_$_Progress) then) =
      __$$_ProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int percent});
}

/// @nodoc
class __$$_ProgressCopyWithImpl<$Res>
    extends _$ProgressCopyWithImpl<$Res, _$_Progress>
    implements _$$_ProgressCopyWith<$Res> {
  __$$_ProgressCopyWithImpl(
      _$_Progress _value, $Res Function(_$_Progress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
  }) {
    return _then(_$_Progress(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Progress implements _Progress {
  const _$_Progress({this.percent = -1});

  factory _$_Progress.fromJson(Map<String, dynamic> json) =>
      _$$_ProgressFromJson(json);

  @override
  @JsonKey()
  final int percent;

  @override
  String toString() {
    return 'Progress(percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Progress &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressCopyWith<_$_Progress> get copyWith =>
      __$$_ProgressCopyWithImpl<_$_Progress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgressToJson(
      this,
    );
  }
}

abstract class _Progress implements Progress {
  const factory _Progress({final int percent}) = _$_Progress;

  factory _Progress.fromJson(Map<String, dynamic> json) = _$_Progress.fromJson;

  @override
  int get percent;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressCopyWith<_$_Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

Assignee _$AssigneeFromJson(Map<String, dynamic> json) {
  return _Assignee.fromJson(json);
}

/// @nodoc
mixin _$Assignee {
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssigneeCopyWith<Assignee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssigneeCopyWith<$Res> {
  factory $AssigneeCopyWith(Assignee value, $Res Function(Assignee) then) =
      _$AssigneeCopyWithImpl<$Res, Assignee>;
  @useResult
  $Res call(
      {String name,
      String key,
      String emailAddress,
      String displayName,
      bool active,
      String timeZone});
}

/// @nodoc
class _$AssigneeCopyWithImpl<$Res, $Val extends Assignee>
    implements $AssigneeCopyWith<$Res> {
  _$AssigneeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? emailAddress = null,
    Object? displayName = null,
    Object? active = null,
    Object? timeZone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssigneeCopyWith<$Res> implements $AssigneeCopyWith<$Res> {
  factory _$$_AssigneeCopyWith(
          _$_Assignee value, $Res Function(_$_Assignee) then) =
      __$$_AssigneeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String key,
      String emailAddress,
      String displayName,
      bool active,
      String timeZone});
}

/// @nodoc
class __$$_AssigneeCopyWithImpl<$Res>
    extends _$AssigneeCopyWithImpl<$Res, _$_Assignee>
    implements _$$_AssigneeCopyWith<$Res> {
  __$$_AssigneeCopyWithImpl(
      _$_Assignee _value, $Res Function(_$_Assignee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? emailAddress = null,
    Object? displayName = null,
    Object? active = null,
    Object? timeZone = null,
  }) {
    return _then(_$_Assignee(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Assignee implements _Assignee {
  const _$_Assignee(
      {this.name = "",
      this.key = "",
      this.emailAddress = "",
      this.displayName = "",
      this.active = false,
      this.timeZone = ""});

  factory _$_Assignee.fromJson(Map<String, dynamic> json) =>
      _$$_AssigneeFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String emailAddress;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final String timeZone;

  @override
  String toString() {
    return 'Assignee(name: $name, key: $key, emailAddress: $emailAddress, displayName: $displayName, active: $active, timeZone: $timeZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Assignee &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, key, emailAddress, displayName, active, timeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssigneeCopyWith<_$_Assignee> get copyWith =>
      __$$_AssigneeCopyWithImpl<_$_Assignee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssigneeToJson(
      this,
    );
  }
}

abstract class _Assignee implements Assignee {
  const factory _Assignee(
      {final String name,
      final String key,
      final String emailAddress,
      final String displayName,
      final bool active,
      final String timeZone}) = _$_Assignee;

  factory _Assignee.fromJson(Map<String, dynamic> json) = _$_Assignee.fromJson;

  @override
  String get name;
  @override
  String get key;
  @override
  String get emailAddress;
  @override
  String get displayName;
  @override
  bool get active;
  @override
  String get timeZone;
  @override
  @JsonKey(ignore: true)
  _$$_AssigneeCopyWith<_$_Assignee> get copyWith =>
      throw _privateConstructorUsedError;
}

AssigneewithValues _$AssigneewithValuesFromJson(Map<String, dynamic> json) {
  return _AssigneewithValues.fromJson(json);
}

/// @nodoc
mixin _$AssigneewithValues {
  String get assigneKey => throw _privateConstructorUsedError;
  String get totalTimeSpentt => throw _privateConstructorUsedError;
  int get timeInHours => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Issues> get eachIssues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssigneewithValuesCopyWith<AssigneewithValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssigneewithValuesCopyWith<$Res> {
  factory $AssigneewithValuesCopyWith(
          AssigneewithValues value, $Res Function(AssigneewithValues) then) =
      _$AssigneewithValuesCopyWithImpl<$Res, AssigneewithValues>;
  @useResult
  $Res call(
      {String assigneKey,
      String totalTimeSpentt,
      int timeInHours,
      String email,
      String date,
      String name,
      List<Issues> eachIssues});
}

/// @nodoc
class _$AssigneewithValuesCopyWithImpl<$Res, $Val extends AssigneewithValues>
    implements $AssigneewithValuesCopyWith<$Res> {
  _$AssigneewithValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assigneKey = null,
    Object? totalTimeSpentt = null,
    Object? timeInHours = null,
    Object? email = null,
    Object? date = null,
    Object? name = null,
    Object? eachIssues = null,
  }) {
    return _then(_value.copyWith(
      assigneKey: null == assigneKey
          ? _value.assigneKey
          : assigneKey // ignore: cast_nullable_to_non_nullable
              as String,
      totalTimeSpentt: null == totalTimeSpentt
          ? _value.totalTimeSpentt
          : totalTimeSpentt // ignore: cast_nullable_to_non_nullable
              as String,
      timeInHours: null == timeInHours
          ? _value.timeInHours
          : timeInHours // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eachIssues: null == eachIssues
          ? _value.eachIssues
          : eachIssues // ignore: cast_nullable_to_non_nullable
              as List<Issues>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssigneewithValuesCopyWith<$Res>
    implements $AssigneewithValuesCopyWith<$Res> {
  factory _$$_AssigneewithValuesCopyWith(_$_AssigneewithValues value,
          $Res Function(_$_AssigneewithValues) then) =
      __$$_AssigneewithValuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String assigneKey,
      String totalTimeSpentt,
      int timeInHours,
      String email,
      String date,
      String name,
      List<Issues> eachIssues});
}

/// @nodoc
class __$$_AssigneewithValuesCopyWithImpl<$Res>
    extends _$AssigneewithValuesCopyWithImpl<$Res, _$_AssigneewithValues>
    implements _$$_AssigneewithValuesCopyWith<$Res> {
  __$$_AssigneewithValuesCopyWithImpl(
      _$_AssigneewithValues _value, $Res Function(_$_AssigneewithValues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assigneKey = null,
    Object? totalTimeSpentt = null,
    Object? timeInHours = null,
    Object? email = null,
    Object? date = null,
    Object? name = null,
    Object? eachIssues = null,
  }) {
    return _then(_$_AssigneewithValues(
      assigneKey: null == assigneKey
          ? _value.assigneKey
          : assigneKey // ignore: cast_nullable_to_non_nullable
              as String,
      totalTimeSpentt: null == totalTimeSpentt
          ? _value.totalTimeSpentt
          : totalTimeSpentt // ignore: cast_nullable_to_non_nullable
              as String,
      timeInHours: null == timeInHours
          ? _value.timeInHours
          : timeInHours // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eachIssues: null == eachIssues
          ? _value._eachIssues
          : eachIssues // ignore: cast_nullable_to_non_nullable
              as List<Issues>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssigneewithValues implements _AssigneewithValues {
  const _$_AssigneewithValues(
      {this.assigneKey = "",
      this.totalTimeSpentt = "",
      this.timeInHours = -1,
      this.email = "",
      this.date = "",
      this.name = "",
      final List<Issues> eachIssues = const []})
      : _eachIssues = eachIssues;

  factory _$_AssigneewithValues.fromJson(Map<String, dynamic> json) =>
      _$$_AssigneewithValuesFromJson(json);

  @override
  @JsonKey()
  final String assigneKey;
  @override
  @JsonKey()
  final String totalTimeSpentt;
  @override
  @JsonKey()
  final int timeInHours;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String name;
  final List<Issues> _eachIssues;
  @override
  @JsonKey()
  List<Issues> get eachIssues {
    if (_eachIssues is EqualUnmodifiableListView) return _eachIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eachIssues);
  }

  @override
  String toString() {
    return 'AssigneewithValues(assigneKey: $assigneKey, totalTimeSpentt: $totalTimeSpentt, timeInHours: $timeInHours, email: $email, date: $date, name: $name, eachIssues: $eachIssues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssigneewithValues &&
            (identical(other.assigneKey, assigneKey) ||
                other.assigneKey == assigneKey) &&
            (identical(other.totalTimeSpentt, totalTimeSpentt) ||
                other.totalTimeSpentt == totalTimeSpentt) &&
            (identical(other.timeInHours, timeInHours) ||
                other.timeInHours == timeInHours) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._eachIssues, _eachIssues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assigneKey,
      totalTimeSpentt,
      timeInHours,
      email,
      date,
      name,
      const DeepCollectionEquality().hash(_eachIssues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssigneewithValuesCopyWith<_$_AssigneewithValues> get copyWith =>
      __$$_AssigneewithValuesCopyWithImpl<_$_AssigneewithValues>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssigneewithValuesToJson(
      this,
    );
  }
}

abstract class _AssigneewithValues implements AssigneewithValues {
  const factory _AssigneewithValues(
      {final String assigneKey,
      final String totalTimeSpentt,
      final int timeInHours,
      final String email,
      final String date,
      final String name,
      final List<Issues> eachIssues}) = _$_AssigneewithValues;

  factory _AssigneewithValues.fromJson(Map<String, dynamic> json) =
      _$_AssigneewithValues.fromJson;

  @override
  String get assigneKey;
  @override
  String get totalTimeSpentt;
  @override
  int get timeInHours;
  @override
  String get email;
  @override
  String get date;
  @override
  String get name;
  @override
  List<Issues> get eachIssues;
  @override
  @JsonKey(ignore: true)
  _$$_AssigneewithValuesCopyWith<_$_AssigneewithValues> get copyWith =>
      throw _privateConstructorUsedError;
}

Components _$ComponentsFromJson(Map<String, dynamic> json) {
  return _Components.fromJson(json);
}

/// @nodoc
mixin _$Components {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentsCopyWith<Components> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentsCopyWith<$Res> {
  factory $ComponentsCopyWith(
          Components value, $Res Function(Components) then) =
      _$ComponentsCopyWithImpl<$Res, Components>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ComponentsCopyWithImpl<$Res, $Val extends Components>
    implements $ComponentsCopyWith<$Res> {
  _$ComponentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComponentsCopyWith<$Res>
    implements $ComponentsCopyWith<$Res> {
  factory _$$_ComponentsCopyWith(
          _$_Components value, $Res Function(_$_Components) then) =
      __$$_ComponentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ComponentsCopyWithImpl<$Res>
    extends _$ComponentsCopyWithImpl<$Res, _$_Components>
    implements _$$_ComponentsCopyWith<$Res> {
  __$$_ComponentsCopyWithImpl(
      _$_Components _value, $Res Function(_$_Components) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Components(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Components implements _Components {
  const _$_Components({this.id = "", this.name = ""});

  factory _$_Components.fromJson(Map<String, dynamic> json) =>
      _$$_ComponentsFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Components(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Components &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComponentsCopyWith<_$_Components> get copyWith =>
      __$$_ComponentsCopyWithImpl<_$_Components>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComponentsToJson(
      this,
    );
  }
}

abstract class _Components implements Components {
  const factory _Components({final String id, final String name}) =
      _$_Components;

  factory _Components.fromJson(Map<String, dynamic> json) =
      _$_Components.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentsCopyWith<_$_Components> get copyWith =>
      throw _privateConstructorUsedError;
}
