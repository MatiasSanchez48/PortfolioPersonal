// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_personal/models/project_model.dart';

/// {@template RepoGithub}
/// Repository for Github to get projects.
/// {@endtemplate}

class RepoGithub {
  /// Url of the api
  static const String url = 'https://api.github.com/';

  final _dio = Dio();

  /// Get repositories from github.
  Future<List<Project>> getRepositories() async {
    try {
      final response = await _dio.get(
        'https://api.github.com/users/MatiasSanchez48/repos',
      );

      final data = response.data as List<dynamic>;

      return data
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      if (kDebugMode) {
        print('Error al obtener repositorios: $e');
      }
      return [];
    }
  }
}
