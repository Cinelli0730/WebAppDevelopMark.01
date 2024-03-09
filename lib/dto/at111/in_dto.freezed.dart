// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InDto _$InDtoFromJson(Map<String, dynamic> json) {
  return _InDto.fromJson(json);
}

/// @nodoc
mixin _$InDto {
  String get userCode => throw _privateConstructorUsedError;
  String get loginPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InDtoCopyWith<InDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InDtoCopyWith<$Res> {
  factory $InDtoCopyWith(InDto value, $Res Function(InDto) then) =
      _$InDtoCopyWithImpl<$Res, InDto>;
  @useResult
  $Res call({String userCode, String loginPassword});
}

/// @nodoc
class _$InDtoCopyWithImpl<$Res, $Val extends InDto>
    implements $InDtoCopyWith<$Res> {
  _$InDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? loginPassword = null,
  }) {
    return _then(_value.copyWith(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      loginPassword: null == loginPassword
          ? _value.loginPassword
          : loginPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InDtoImplCopyWith<$Res> implements $InDtoCopyWith<$Res> {
  factory _$$InDtoImplCopyWith(
          _$InDtoImpl value, $Res Function(_$InDtoImpl) then) =
      __$$InDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userCode, String loginPassword});
}

/// @nodoc
class __$$InDtoImplCopyWithImpl<$Res>
    extends _$InDtoCopyWithImpl<$Res, _$InDtoImpl>
    implements _$$InDtoImplCopyWith<$Res> {
  __$$InDtoImplCopyWithImpl(
      _$InDtoImpl _value, $Res Function(_$InDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? loginPassword = null,
  }) {
    return _then(_$InDtoImpl(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      loginPassword: null == loginPassword
          ? _value.loginPassword
          : loginPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InDtoImpl implements _InDto {
  const _$InDtoImpl({required this.userCode, required this.loginPassword});

  factory _$InDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InDtoImplFromJson(json);

  @override
  final String userCode;
  @override
  final String loginPassword;

  @override
  String toString() {
    return 'InDto(userCode: $userCode, loginPassword: $loginPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InDtoImpl &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.loginPassword, loginPassword) ||
                other.loginPassword == loginPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userCode, loginPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InDtoImplCopyWith<_$InDtoImpl> get copyWith =>
      __$$InDtoImplCopyWithImpl<_$InDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InDtoImplToJson(
      this,
    );
  }
}

abstract class _InDto implements InDto {
  const factory _InDto(
      {required final String userCode,
      required final String loginPassword}) = _$InDtoImpl;

  factory _InDto.fromJson(Map<String, dynamic> json) = _$InDtoImpl.fromJson;

  @override
  String get userCode;
  @override
  String get loginPassword;
  @override
  @JsonKey(ignore: true)
  _$$InDtoImplCopyWith<_$InDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
