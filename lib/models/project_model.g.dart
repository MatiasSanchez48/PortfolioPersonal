// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Project _$ProjectFromJson(Map<String, dynamic> json) => _Project(
      name: json['name'] as String?,
      languagesUrl: json['languagesUrl'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['htmlUrl'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$ProjectToJson(_Project instance) => <String, dynamic>{
      'name': instance.name,
      'languagesUrl': instance.languagesUrl,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'owner': instance.owner,
      'htmlUrl': instance.htmlUrl,
      'description': instance.description,
      'language': instance.language,
    };

_Owner _$OwnerFromJson(Map<String, dynamic> json) => _Owner(
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(_Owner instance) => <String, dynamic>{
      'avatarUrl': instance.avatarUrl,
    };
