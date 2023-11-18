// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$selectDayImplCopyWith<$Res> {
  factory _$$selectDayImplCopyWith(
          _$selectDayImpl value, $Res Function(_$selectDayImpl) then) =
      __$$selectDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String day});
}

/// @nodoc
class __$$selectDayImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$selectDayImpl>
    implements _$$selectDayImplCopyWith<$Res> {
  __$$selectDayImplCopyWithImpl(
      _$selectDayImpl _value, $Res Function(_$selectDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
  }) {
    return _then(_$selectDayImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$selectDayImpl implements _selectDay {
  const _$selectDayImpl({required this.day});

  @override
  final String day;

  @override
  String toString() {
    return 'TodoEvent.selectDay(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectDayImpl &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectDayImplCopyWith<_$selectDayImpl> get copyWith =>
      __$$selectDayImplCopyWithImpl<_$selectDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return selectDay(day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return selectDay?.call(day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return selectDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return selectDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(this);
    }
    return orElse();
  }
}

abstract class _selectDay implements TodoEvent {
  const factory _selectDay({required final String day}) = _$selectDayImpl;

  String get day;
  @JsonKey(ignore: true)
  _$$selectDayImplCopyWith<_$selectDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$completeImplCopyWith<$Res> {
  factory _$$completeImplCopyWith(
          _$completeImpl value, $Res Function(_$completeImpl) then) =
      __$$completeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Days day, int acivityNomber});
}

/// @nodoc
class __$$completeImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$completeImpl>
    implements _$$completeImplCopyWith<$Res> {
  __$$completeImplCopyWithImpl(
      _$completeImpl _value, $Res Function(_$completeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? acivityNomber = null,
  }) {
    return _then(_$completeImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days,
      acivityNomber: null == acivityNomber
          ? _value.acivityNomber
          : acivityNomber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$completeImpl implements _complete {
  const _$completeImpl({required this.day, required this.acivityNomber});

  @override
  final Days day;
  @override
  final int acivityNomber;

  @override
  String toString() {
    return 'TodoEvent.complete(day: $day, acivityNomber: $acivityNomber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$completeImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.acivityNomber, acivityNomber) ||
                other.acivityNomber == acivityNomber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, acivityNomber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$completeImplCopyWith<_$completeImpl> get copyWith =>
      __$$completeImplCopyWithImpl<_$completeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return complete(day, acivityNomber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return complete?.call(day, acivityNomber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(day, acivityNomber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _complete implements TodoEvent {
  const factory _complete(
      {required final Days day,
      required final int acivityNomber}) = _$completeImpl;

  Days get day;
  int get acivityNomber;
  @JsonKey(ignore: true)
  _$$completeImplCopyWith<_$completeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addTodoImplCopyWith<$Res> {
  factory _$$addTodoImplCopyWith(
          _$addTodoImpl value, $Res Function(_$addTodoImpl) then) =
      __$$addTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Days day, List<TextEditingController> controllers});
}

/// @nodoc
class __$$addTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$addTodoImpl>
    implements _$$addTodoImplCopyWith<$Res> {
  __$$addTodoImplCopyWithImpl(
      _$addTodoImpl _value, $Res Function(_$addTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? controllers = null,
  }) {
    return _then(_$addTodoImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days,
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
    ));
  }
}

/// @nodoc

class _$addTodoImpl implements _addTodo {
  const _$addTodoImpl(
      {required this.day,
      required final List<TextEditingController> controllers})
      : _controllers = controllers;

  @override
  final Days day;
  final List<TextEditingController> _controllers;
  @override
  List<TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  String toString() {
    return 'TodoEvent.addTodo(day: $day, controllers: $controllers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addTodoImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_controllers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addTodoImplCopyWith<_$addTodoImpl> get copyWith =>
      __$$addTodoImplCopyWithImpl<_$addTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return addTodo(day, controllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return addTodo?.call(day, controllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(day, controllers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _addTodo implements TodoEvent {
  const factory _addTodo(
      {required final Days day,
      required final List<TextEditingController> controllers}) = _$addTodoImpl;

  Days get day;
  List<TextEditingController> get controllers;
  @JsonKey(ignore: true)
  _$$addTodoImplCopyWith<_$addTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editActivityImplCopyWith<$Res> {
  factory _$$editActivityImplCopyWith(
          _$editActivityImpl value, $Res Function(_$editActivityImpl) then) =
      __$$editActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Days day, int? indexNomber, bool isEdit, String activity});
}

/// @nodoc
class __$$editActivityImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$editActivityImpl>
    implements _$$editActivityImplCopyWith<$Res> {
  __$$editActivityImplCopyWithImpl(
      _$editActivityImpl _value, $Res Function(_$editActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? indexNomber = freezed,
    Object? isEdit = null,
    Object? activity = null,
  }) {
    return _then(_$editActivityImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days,
      indexNomber: freezed == indexNomber
          ? _value.indexNomber
          : indexNomber // ignore: cast_nullable_to_non_nullable
              as int?,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$editActivityImpl implements _editActivity {
  const _$editActivityImpl(
      {required this.day,
      required this.indexNomber,
      required this.isEdit,
      required this.activity});

  @override
  final Days day;
  @override
  final int? indexNomber;
  @override
  final bool isEdit;
  @override
  final String activity;

  @override
  String toString() {
    return 'TodoEvent.editActivity(day: $day, indexNomber: $indexNomber, isEdit: $isEdit, activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editActivityImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.indexNomber, indexNomber) ||
                other.indexNomber == indexNomber) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, day, indexNomber, isEdit, activity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$editActivityImplCopyWith<_$editActivityImpl> get copyWith =>
      __$$editActivityImplCopyWithImpl<_$editActivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return editActivity(day, indexNomber, isEdit, activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return editActivity?.call(day, indexNomber, isEdit, activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (editActivity != null) {
      return editActivity(day, indexNomber, isEdit, activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return editActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return editActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (editActivity != null) {
      return editActivity(this);
    }
    return orElse();
  }
}

abstract class _editActivity implements TodoEvent {
  const factory _editActivity(
      {required final Days day,
      required final int? indexNomber,
      required final bool isEdit,
      required final String activity}) = _$editActivityImpl;

  Days get day;
  int? get indexNomber;
  bool get isEdit;
  String get activity;
  @JsonKey(ignore: true)
  _$$editActivityImplCopyWith<_$editActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteActivityImplCopyWith<$Res> {
  factory _$$deleteActivityImplCopyWith(_$deleteActivityImpl value,
          $Res Function(_$deleteActivityImpl) then) =
      __$$deleteActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Days day, int acticityIndex});
}

/// @nodoc
class __$$deleteActivityImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$deleteActivityImpl>
    implements _$$deleteActivityImplCopyWith<$Res> {
  __$$deleteActivityImplCopyWithImpl(
      _$deleteActivityImpl _value, $Res Function(_$deleteActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? acticityIndex = null,
  }) {
    return _then(_$deleteActivityImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days,
      acticityIndex: null == acticityIndex
          ? _value.acticityIndex
          : acticityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$deleteActivityImpl implements _deleteActivity {
  const _$deleteActivityImpl({required this.day, required this.acticityIndex});

  @override
  final Days day;
  @override
  final int acticityIndex;

  @override
  String toString() {
    return 'TodoEvent.deleteActivity(day: $day, acticityIndex: $acticityIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteActivityImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.acticityIndex, acticityIndex) ||
                other.acticityIndex == acticityIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, acticityIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteActivityImplCopyWith<_$deleteActivityImpl> get copyWith =>
      __$$deleteActivityImplCopyWithImpl<_$deleteActivityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return deleteActivity(day, acticityIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return deleteActivity?.call(day, acticityIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (deleteActivity != null) {
      return deleteActivity(day, acticityIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return deleteActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return deleteActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (deleteActivity != null) {
      return deleteActivity(this);
    }
    return orElse();
  }
}

abstract class _deleteActivity implements TodoEvent {
  const factory _deleteActivity(
      {required final Days day,
      required final int acticityIndex}) = _$deleteActivityImpl;

  Days get day;
  int get acticityIndex;
  @JsonKey(ignore: true)
  _$$deleteActivityImplCopyWith<_$deleteActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteAllImplCopyWith<$Res> {
  factory _$$deleteAllImplCopyWith(
          _$deleteAllImpl value, $Res Function(_$deleteAllImpl) then) =
      __$$deleteAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$deleteAllImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$deleteAllImpl>
    implements _$$deleteAllImplCopyWith<$Res> {
  __$$deleteAllImplCopyWithImpl(
      _$deleteAllImpl _value, $Res Function(_$deleteAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$deleteAllImpl implements _deleteAll {
  const _$deleteAllImpl();

  @override
  String toString() {
    return 'TodoEvent.deleteAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$deleteAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return deleteAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return deleteAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return deleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return deleteAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(this);
    }
    return orElse();
  }
}

abstract class _deleteAll implements TodoEvent {
  const factory _deleteAll() = _$deleteAllImpl;
}

/// @nodoc
abstract class _$$deleteCompletedImplCopyWith<$Res> {
  factory _$$deleteCompletedImplCopyWith(_$deleteCompletedImpl value,
          $Res Function(_$deleteCompletedImpl) then) =
      __$$deleteCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$deleteCompletedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$deleteCompletedImpl>
    implements _$$deleteCompletedImplCopyWith<$Res> {
  __$$deleteCompletedImplCopyWithImpl(
      _$deleteCompletedImpl _value, $Res Function(_$deleteCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$deleteCompletedImpl implements _deleteCompleted {
  const _$deleteCompletedImpl();

  @override
  String toString() {
    return 'TodoEvent.deleteCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$deleteCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return deleteCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return deleteCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (deleteCompleted != null) {
      return deleteCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return deleteCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return deleteCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (deleteCompleted != null) {
      return deleteCompleted(this);
    }
    return orElse();
  }
}

abstract class _deleteCompleted implements TodoEvent {
  const factory _deleteCompleted() = _$deleteCompletedImpl;
}

/// @nodoc
abstract class _$$getDataImplCopyWith<$Res> {
  factory _$$getDataImplCopyWith(
          _$getDataImpl value, $Res Function(_$getDataImpl) then) =
      __$$getDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getDataImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$getDataImpl>
    implements _$$getDataImplCopyWith<$Res> {
  __$$getDataImplCopyWithImpl(
      _$getDataImpl _value, $Res Function(_$getDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getDataImpl implements _getData {
  const _$getDataImpl();

  @override
  String toString() {
    return 'TodoEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String day) selectDay,
    required TResult Function(Days day, int acivityNomber) complete,
    required TResult Function(Days day, List<TextEditingController> controllers)
        addTodo,
    required TResult Function(
            Days day, int? indexNomber, bool isEdit, String activity)
        editActivity,
    required TResult Function(Days day, int acticityIndex) deleteActivity,
    required TResult Function() deleteAll,
    required TResult Function() deleteCompleted,
    required TResult Function() getData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String day)? selectDay,
    TResult? Function(Days day, int acivityNomber)? complete,
    TResult? Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult? Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult? Function(Days day, int acticityIndex)? deleteActivity,
    TResult? Function()? deleteAll,
    TResult? Function()? deleteCompleted,
    TResult? Function()? getData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String day)? selectDay,
    TResult Function(Days day, int acivityNomber)? complete,
    TResult Function(Days day, List<TextEditingController> controllers)?
        addTodo,
    TResult Function(Days day, int? indexNomber, bool isEdit, String activity)?
        editActivity,
    TResult Function(Days day, int acticityIndex)? deleteActivity,
    TResult Function()? deleteAll,
    TResult Function()? deleteCompleted,
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectDay value) selectDay,
    required TResult Function(_complete value) complete,
    required TResult Function(_addTodo value) addTodo,
    required TResult Function(_editActivity value) editActivity,
    required TResult Function(_deleteActivity value) deleteActivity,
    required TResult Function(_deleteAll value) deleteAll,
    required TResult Function(_deleteCompleted value) deleteCompleted,
    required TResult Function(_getData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectDay value)? selectDay,
    TResult? Function(_complete value)? complete,
    TResult? Function(_addTodo value)? addTodo,
    TResult? Function(_editActivity value)? editActivity,
    TResult? Function(_deleteActivity value)? deleteActivity,
    TResult? Function(_deleteAll value)? deleteAll,
    TResult? Function(_deleteCompleted value)? deleteCompleted,
    TResult? Function(_getData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectDay value)? selectDay,
    TResult Function(_complete value)? complete,
    TResult Function(_addTodo value)? addTodo,
    TResult Function(_editActivity value)? editActivity,
    TResult Function(_deleteActivity value)? deleteActivity,
    TResult Function(_deleteAll value)? deleteAll,
    TResult Function(_deleteCompleted value)? deleteCompleted,
    TResult Function(_getData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _getData implements TodoEvent {
  const factory _getData() = _$getDataImpl;
}

/// @nodoc
mixin _$TodoState {
  StateResponse<List<TodoModel>>? get todo =>
      throw _privateConstructorUsedError;
  Days get daySelection => throw _privateConstructorUsedError;
  StateResponse<dynamic> get addTodo => throw _privateConstructorUsedError;
  StateResponse<dynamic> get edit => throw _privateConstructorUsedError;
  StateResponse<dynamic> get delete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {StateResponse<List<TodoModel>>? todo,
      Days daySelection,
      StateResponse<dynamic> addTodo,
      StateResponse<dynamic> edit,
      StateResponse<dynamic> delete});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = freezed,
    Object? daySelection = null,
    Object? addTodo = null,
    Object? edit = null,
    Object? delete = null,
  }) {
    return _then(_value.copyWith(
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<TodoModel>>?,
      daySelection: null == daySelection
          ? _value.daySelection
          : daySelection // ignore: cast_nullable_to_non_nullable
              as Days,
      addTodo: null == addTodo
          ? _value.addTodo
          : addTodo // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      edit: null == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      delete: null == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateResponse<List<TodoModel>>? todo,
      Days daySelection,
      StateResponse<dynamic> addTodo,
      StateResponse<dynamic> edit,
      StateResponse<dynamic> delete});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = freezed,
    Object? daySelection = null,
    Object? addTodo = null,
    Object? edit = null,
    Object? delete = null,
  }) {
    return _then(_$TodoStateImpl(
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<TodoModel>>?,
      daySelection: null == daySelection
          ? _value.daySelection
          : daySelection // ignore: cast_nullable_to_non_nullable
              as Days,
      addTodo: null == addTodo
          ? _value.addTodo
          : addTodo // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      edit: null == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      delete: null == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {required this.todo,
      required this.daySelection,
      required this.addTodo,
      required this.edit,
      required this.delete});

  @override
  final StateResponse<List<TodoModel>>? todo;
  @override
  final Days daySelection;
  @override
  final StateResponse<dynamic> addTodo;
  @override
  final StateResponse<dynamic> edit;
  @override
  final StateResponse<dynamic> delete;

  @override
  String toString() {
    return 'TodoState(todo: $todo, daySelection: $daySelection, addTodo: $addTodo, edit: $edit, delete: $delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.daySelection, daySelection) ||
                other.daySelection == daySelection) &&
            (identical(other.addTodo, addTodo) || other.addTodo == addTodo) &&
            (identical(other.edit, edit) || other.edit == edit) &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, todo, daySelection, addTodo, edit, delete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final StateResponse<List<TodoModel>>? todo,
      required final Days daySelection,
      required final StateResponse<dynamic> addTodo,
      required final StateResponse<dynamic> edit,
      required final StateResponse<dynamic> delete}) = _$TodoStateImpl;

  @override
  StateResponse<List<TodoModel>>? get todo;
  @override
  Days get daySelection;
  @override
  StateResponse<dynamic> get addTodo;
  @override
  StateResponse<dynamic> get edit;
  @override
  StateResponse<dynamic> get delete;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
