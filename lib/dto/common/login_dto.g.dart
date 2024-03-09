// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDtoImpl _$$LoginDtoImplFromJson(Map<String, dynamic> json) =>
    _$LoginDtoImpl(
      userCode: json['userCode'] as String,
      userName: json['userName'] as String,
      roleDto: RoleDto.fromJson(json['roleDto'] as Map<String, dynamic>),
      selectedFunction: json['selectedFunction'] as String,
      loginFailureCount: json['loginFailureCount'] as int,
    );

Map<String, dynamic> _$$LoginDtoImplToJson(_$LoginDtoImpl instance) =>
    <String, dynamic>{
      'userCode': instance.userCode,
      'userName': instance.userName,
      'roleDto': instance.roleDto,
      'selectedFunction': instance.selectedFunction,
      'loginFailureCount': instance.loginFailureCount,
    };
