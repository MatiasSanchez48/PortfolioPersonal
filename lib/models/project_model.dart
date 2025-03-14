import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed

/// {@template Project}
/// Model for data GitHub
/// {@endtemplate}
abstract class Project with _$Project {
  /// {@macro Project}
  factory Project({
    String? name,
    String? languagesUrl,
    DateTime? updatedAt,
    Owner? owner,
    String? htmlUrl,
    String? description,
    String? language,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed

/// {@template Owner}
/// Model for Projects
/// {@endtemplate}
abstract class Owner with _$Owner {
  /// {@macro Owner}
  factory Owner({String? avatarUrl}) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
