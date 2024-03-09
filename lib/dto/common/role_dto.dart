import "package:freezed_annotation/freezed_annotation.dart";

part 'role_dto.freezed.dart';
part 'role_dto.g.dart';

@freezed
class RoleDto with _$RoleDto {
  const factory RoleDto({
    required String roleCode,
    required String roleName,
    required String departmentCode,
    required String departmentName,
  }) = _RoleDto;

  factory RoleDto.fromJson(Map<String, dynamic> json) => _$RoleDtoFromJson(json);
}
