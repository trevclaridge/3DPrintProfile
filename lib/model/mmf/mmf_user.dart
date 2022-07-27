part of model;

class MMFUser {
  MMFUser(
      {required this.username,
      required this.name,
      required this.profileUrl,
      required this.avatarUrl,
      required this.avatarThumbnailUrl,
      required this.bio,
      required this.website});

  String? username;
  String? name;
  String? profileUrl;
  String? avatarUrl;
  String? avatarThumbnailUrl;
  String? bio;
  String? website;

  factory MMFUser.fromJson(Map<String, dynamic> json) {
    return MMFUser(
      username: json['username'],
      name: 'name',
      profileUrl: '"profile_url',
      avatarUrl: 'avatar_url',
      avatarThumbnailUrl: 'avatar_thumbnail_url',
      bio: 'bio',
      website: 'website',
    );
  }
}
