// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InDtoImpl _$$InDtoImplFromJson(Map<String, dynamic> json) => _$InDtoImpl(
      userCode: json['userCode'] as String,
      oldLoginPassword: json['oldLoginPassword'] as String,
      newLoginPassword: json['newLoginPassword'] as String,
      newLoginPasswordConfrim: json['newLoginPasswordConfrim'] as String,
    );

Map<String, dynamic> _$$InDtoImplToJson(_$InDtoImpl instance) =>
    <String, dynamic>{
      'userCode': instance.userCode,
      'oldLoginPassword': instance.oldLoginPassword,
      'newLoginPassword': instance.newLoginPassword,
      'newLoginPasswordConfrim': instance.newLoginPasswordConfrim,
    };
