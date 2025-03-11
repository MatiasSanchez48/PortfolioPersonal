// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class RepoGithub {
  static const String url = 'https://api.github.com/';

  final Dio _dio = Dio();

  Future<List<dynamic>?> getRepositories() async {
    try {
      final response = await _dio.get(
        'https://api.github.com/users/MatiasSanchez48/repos',
      );

      return response.data as List<dynamic>;
    } catch (e) {
      if (kDebugMode) {
        print('Error al obtener repositorios: $e');
      }
      return [];
    }
  }
}
