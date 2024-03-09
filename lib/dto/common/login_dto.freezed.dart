// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  String get userCode => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  RoleDto get roleDto => throw _privateConstructorUsedError;
  String get selectedFunction => throw _privateConstructorUsedError;
  int get loginFailureCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
  @useResult
  $Res call(
      {String userCode,
      String userName,
      RoleDto roleDto,
      String selectedFunction,
      int loginFailureCount});

  $RoleDtoCopyWith<$Res> get roleDto;
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? userName = null,
    Object? roleDto = null,
    Object? selectedFunction = null,
    Object? loginFailureCount = null,
  }) {
    return _then(_value.copyWith(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      roleDto: null == roleDto
          ? _value.roleDto
          : roleDto // ignore: cast_nullable_to_non_nullable
              as RoleDto,
      selectedFunction: null == selectedFunction
          ? _value.selectedFunction
          : selectedFunction // ignore: cast_nullable_to_non_nullable
              as String,
      loginFailureCount: null == loginFailureCount
          ? _value.loginFailureCount
          : loginFailureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleDtoCopyWith<$Res> get roleDto {
    return $RoleDtoCopyWith<$Res>(_value.roleDto, (value) {
      return _then(_value.copyWith(roleDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginDtoImplCopyWith<$Res>
    implements $LoginDtoCopyWith<$Res> {
  factory _$$LoginDtoImplCopyWith(
          _$LoginDtoImpl value, $Res Function(_$LoginDtoImpl) then) =
      __$$LoginDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userCode,
      String userName,
      RoleDto roleDto,
      String selectedFunction,
      int loginFailureCount});

  @override
  $RoleDtoCopyWith<$Res> get roleDto;
}

/// @nodoc
class __$$LoginDtoImplCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$LoginDtoImpl>
    implements _$$LoginDtoImplCopyWith<$Res> {
  __$$LoginDtoImplCopyWithImpl(
      _$LoginDtoImpl _value, $Res Function(_$LoginDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? userName = null,
    Object? roleDto = null,
    Object? selectedFunction = null,
    Object? loginFailureCount = null,
  }) {
    return _then(_$LoginDtoImpl(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      roleDto: null == roleDto
          ? _value.roleDto
          : roleDto // ignore: cast_nullable_to_non_nullable
              as RoleDto,
      selectedFunction: null == selectedFunction
          ? _value.selectedFunction
          : selectedFunction // ignore: cast_nullable_to_non_nullable
              as String,
      loginFailureCount: null == loginFailureCount
          ? _value.loginFailureCount
          : loginFailureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDtoImpl implements _LoginDto {
  const _$LoginDtoImpl(
      {required this.userCode,
      required this.userName,
      required this.roleDto,
      required this.selectedFunction,
      required this.loginFailureCount});

  factory _$LoginDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDtoImplFromJson(json);

  @override
  final String userCode;
  @override
  final String userName;
  @override
  final RoleDto roleDto;
  @override
  final String selectedFunction;
  @override
  final int loginFailureCount;

  @override
  String toString() {
    return 'LoginDto(userCode: $userCode, userName: $userName, roleDto: $roleDto, selectedFunction: $selectedFunction, loginFailureCount: $loginFailureCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDtoImpl &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.roleDto, roleDto) || other.roleDto == roleDto) &&
            (identical(other.selectedFunction, selectedFunction) ||
                other.selectedFunction == selectedFunction) &&
            (identical(other.loginFailureCount, loginFailureCount) ||
                other.loginFailureCount == loginFailureCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userCode, userName, roleDto,
      selectedFunction, loginFailureCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDtoImplCopyWith<_$LoginDtoImpl> get copyWith =>
      __$$LoginDtoImplCopyWithImpl<_$LoginDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginDto implements LoginDto {
  const factory _LoginDto(
      {required final String userCode,
      required final String userName,
      required final RoleDto roleDto,
      required final String selectedFunction,
      required final int loginFailureCount}) = _$LoginDtoImpl;

  factory _LoginDto.fromJson(Map<String, dynamic> json) =
      _$LoginDtoImpl.fromJson;

  @override
  String get userCode;
  @override
  String get userName;
  @override
  RoleDto get roleDto;
  @override
  String get selectedFunction;
  @override
  int get loginFailureCount;
  @override
  @JsonKey(ignore: true)
  _$$LoginDtoImplCopyWith<_$LoginDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
