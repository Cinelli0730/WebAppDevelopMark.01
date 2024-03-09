import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webapp_dev_mark01_flutter/dto/common/role_dto.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String userCode,
    required String userName,
    required RoleDto roleDto,
    required String selectedFunction,
    required int loginFailureCount,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}
