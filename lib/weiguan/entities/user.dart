import 'package:json_annotation/json_annotation.dart';
import 'package:functional_data/functional_data.dart';

import 'entities.dart';

part 'user.g.dart';

@JsonSerializable()
@FunctionalData()
class UserEntity extends $UserEntity {
  final int id;
  final String username;
  final String mobile;
  final String email;
  final int avatarId;
  final String intro;
  final DateTime createdAt;
  final DateTime updatedAt;
  final FileEntity avatar;
  final UserStatEntity stat;
  @JsonKey(defaultValue: false)
  final bool isFollowing;

  const UserEntity({
    this.id,
    this.username,
    this.mobile,
    this.email,
    this.avatarId,
    this.intro,
    this.createdAt,
    this.updatedAt,
    this.avatar,
    this.stat,
    this.isFollowing,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
