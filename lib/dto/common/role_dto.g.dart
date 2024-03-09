// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoleDtoImpl _$$RoleDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoleDtoImpl(
      roleCode: json['roleCode'] as String,
      roleName: json['roleName'] as String,
      departmentCode: json['departmentCode'] as String,
      departmentName: json['departmentName'] as String,
    );

Map<String, dynamic> _$$RoleDtoImplToJson(_$RoleDtoImpl instance) =>
    <String, dynamic>{
      'roleCode': instance.roleCode,
      'roleName': instance.roleName,
      'departmentCode': instance.departmentCode,
      'departmentName': instance.departmentName,
    };
