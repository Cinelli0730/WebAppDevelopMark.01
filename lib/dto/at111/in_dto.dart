import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_dto.freezed.dart';
part 'in_dto.g.dart';

@freezed
class InDto with _$InDto {
  const factory InDto({
    required String userCode,
    required String loginPassword,
  }) = _InDto;

  factory InDto.fromJson(Map<String, dynamic> json) => _$InDtoFromJson(json);
}
