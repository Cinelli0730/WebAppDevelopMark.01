import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webapp_dev_mark01_flutter/common/result.dart';
import 'package:webapp_dev_mark01_flutter/const/app_const.dart';
import 'package:webapp_dev_mark01_flutter/dto/at112/in_dto.dart';
import 'package:webapp_dev_mark01_flutter/dto/common/login_dto.dart';

class AT112Service {
  Future<Result<LoginDto?>> login(InDto inDto) async {
    final url = Uri.parse('${ServerUrl.host}/AT112/controller/update');
    final headers = {'Content-Type': 'application/json; charset=utf-8'};
    final body = json.encode(inDto.toJson());

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        final decodedBody = utf8.decode(response.bodyBytes);
        final data = json.decode(decodedBody);
        return Result(data: LoginDto.fromJson(data));
      } else if (response.statusCode == 400) {
        final decodedBody = utf8.decode(response.bodyBytes);
        final error = json.decode(decodedBody);
        return Result(error: error['message'] ?? 'Unknown error occurred');
      } else {
        return Result(error: 'Server returned status code ${response.statusCode}');
      }
    } catch (e) {
      return Result(error: e.toString());
    }
  }
}
