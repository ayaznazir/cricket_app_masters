import 'package:cricket/core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MatchApi {
  MatchApi({Dio? dio})
      : _dio = (dio ?? Dio())..options.baseUrl = 'https://rest.entitysport.com';

  final Dio _dio;

  @visibleForTesting
  static const apiToken = 'ec471071441bb2ac538a0ff901abd249';

  Future<List<Match>> matches() async {
    try {
      final response = await _dio.get('/v2/matches/?token=$apiToken');
      return (response.data['response']['items'] as List<dynamic>)
          .map((e) => Match.fromJson(e))
          .toList();
    } on DioError catch (e) {
      print(e.response);
      rethrow;
    }
  }
}
