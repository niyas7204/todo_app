// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) signUp,
    required TResult Function() checkUser,
    required TResult Function(String pin) validateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? signUp,
    TResult? Function()? checkUser,
    TResult? Function(String pin)? validateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? signUp,
    TResult Function()? checkUser,
    TResult Function(String pin)? validateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUp value) signUp,
    required TResult Function(_checkUser value) checkUser,
    required TResult Function(_validateUser value) validateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUp value)? signUp,
    TResult? Function(_checkUser value)? checkUser,
    TResult? Function(_validateUser value)? validateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUp value)? signUp,
    TResult Function(_checkUser value)? checkUser,
    TResult Function(_validateUser value)? validateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$signUpImplCopyWith<$Res> {
  factory _$$signUpImplCopyWith(
          _$signUpImpl value, $Res Function(_$signUpImpl) then) =
      __$$signUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$signUpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$signUpImpl>
    implements _$$signUpImplCopyWith<$Res> {
  __$$signUpImplCopyWithImpl(
      _$signUpImpl _value, $Res Function(_$signUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$signUpImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$signUpImpl implements _signUp {
  const _$signUpImpl({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signUpImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$signUpImplCopyWith<_$signUpImpl> get copyWith =>
      __$$signUpImplCopyWithImpl<_$signUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) signUp,
    required TResult Function() checkUser,
    required TResult Function(String pin) validateUser,
  }) {
    return signUp(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? signUp,
    TResult? Function()? checkUser,
    TResult? Function(String pin)? validateUser,
  }) {
    return signUp?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? signUp,
    TResult Function()? checkUser,
    TResult Function(String pin)? validateUser,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUp value) signUp,
    required TResult Function(_checkUser value) checkUser,
    required TResult Function(_validateUser value) validateUser,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUp value)? signUp,
    TResult? Function(_checkUser value)? checkUser,
    TResult? Function(_validateUser value)? validateUser,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUp value)? signUp,
    TResult Function(_checkUser value)? checkUser,
    TResult Function(_validateUser value)? validateUser,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _signUp implements AuthenticationEvent {
  const factory _signUp({required final String pin}) = _$signUpImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$signUpImplCopyWith<_$signUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkUserImplCopyWith<$Res> {
  factory _$$checkUserImplCopyWith(
          _$checkUserImpl value, $Res Function(_$checkUserImpl) then) =
      __$$checkUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkUserImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$checkUserImpl>
    implements _$$checkUserImplCopyWith<$Res> {
  __$$checkUserImplCopyWithImpl(
      _$checkUserImpl _value, $Res Function(_$checkUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkUserImpl implements _checkUser {
  const _$checkUserImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.checkUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) signUp,
    required TResult Function() checkUser,
    required TResult Function(String pin) validateUser,
  }) {
    return checkUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? signUp,
    TResult? Function()? checkUser,
    TResult? Function(String pin)? validateUser,
  }) {
    return checkUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? signUp,
    TResult Function()? checkUser,
    TResult Function(String pin)? validateUser,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUp value) signUp,
    required TResult Function(_checkUser value) checkUser,
    required TResult Function(_validateUser value) validateUser,
  }) {
    return checkUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUp value)? signUp,
    TResult? Function(_checkUser value)? checkUser,
    TResult? Function(_validateUser value)? validateUser,
  }) {
    return checkUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUp value)? signUp,
    TResult Function(_checkUser value)? checkUser,
    TResult Function(_validateUser value)? validateUser,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser(this);
    }
    return orElse();
  }
}

abstract class _checkUser implements AuthenticationEvent {
  const factory _checkUser() = _$checkUserImpl;
}

/// @nodoc
abstract class _$$validateUserImplCopyWith<$Res> {
  factory _$$validateUserImplCopyWith(
          _$validateUserImpl value, $Res Function(_$validateUserImpl) then) =
      __$$validateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$validateUserImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$validateUserImpl>
    implements _$$validateUserImplCopyWith<$Res> {
  __$$validateUserImplCopyWithImpl(
      _$validateUserImpl _value, $Res Function(_$validateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$validateUserImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$validateUserImpl implements _validateUser {
  const _$validateUserImpl({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'AuthenticationEvent.validateUser(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$validateUserImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$validateUserImplCopyWith<_$validateUserImpl> get copyWith =>
      __$$validateUserImplCopyWithImpl<_$validateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) signUp,
    required TResult Function() checkUser,
    required TResult Function(String pin) validateUser,
  }) {
    return validateUser(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? signUp,
    TResult? Function()? checkUser,
    TResult? Function(String pin)? validateUser,
  }) {
    return validateUser?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? signUp,
    TResult Function()? checkUser,
    TResult Function(String pin)? validateUser,
    required TResult orElse(),
  }) {
    if (validateUser != null) {
      return validateUser(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUp value) signUp,
    required TResult Function(_checkUser value) checkUser,
    required TResult Function(_validateUser value) validateUser,
  }) {
    return validateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUp value)? signUp,
    TResult? Function(_checkUser value)? checkUser,
    TResult? Function(_validateUser value)? validateUser,
  }) {
    return validateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUp value)? signUp,
    TResult Function(_checkUser value)? checkUser,
    TResult Function(_validateUser value)? validateUser,
    required TResult orElse(),
  }) {
    if (validateUser != null) {
      return validateUser(this);
    }
    return orElse();
  }
}

abstract class _validateUser implements AuthenticationEvent {
  const factory _validateUser({required final String pin}) = _$validateUserImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$validateUserImplCopyWith<_$validateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  StateResponse<dynamic> get signUP => throw _privateConstructorUsedError;
  StateResponse<dynamic> get logeduser => throw _privateConstructorUsedError;
  StateResponse<dynamic> get validate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {StateResponse<dynamic> signUP,
      StateResponse<dynamic> logeduser,
      StateResponse<dynamic> validate});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUP = null,
    Object? logeduser = null,
    Object? validate = null,
  }) {
    return _then(_value.copyWith(
      signUP: null == signUP
          ? _value.signUP
          : signUP // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      logeduser: null == logeduser
          ? _value.logeduser
          : logeduser // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateResponse<dynamic> signUP,
      StateResponse<dynamic> logeduser,
      StateResponse<dynamic> validate});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUP = null,
    Object? logeduser = null,
    Object? validate = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      signUP: null == signUP
          ? _value.signUP
          : signUP // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      logeduser: null == logeduser
          ? _value.logeduser
          : logeduser // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {required this.signUP, required this.logeduser, required this.validate});

  @override
  final StateResponse<dynamic> signUP;
  @override
  final StateResponse<dynamic> logeduser;
  @override
  final StateResponse<dynamic> validate;

  @override
  String toString() {
    return 'AuthenticationState(signUP: $signUP, logeduser: $logeduser, validate: $validate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.signUP, signUP) || other.signUP == signUP) &&
            (identical(other.logeduser, logeduser) ||
                other.logeduser == logeduser) &&
            (identical(other.validate, validate) ||
                other.validate == validate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUP, logeduser, validate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
          {required final StateResponse<dynamic> signUP,
          required final StateResponse<dynamic> logeduser,
          required final StateResponse<dynamic> validate}) =
      _$AuthenticationStateImpl;

  @override
  StateResponse<dynamic> get signUP;
  @override
  StateResponse<dynamic> get logeduser;
  @override
  StateResponse<dynamic> get validate;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
