part of model;

class MMFUser {
  MMFUser(
      {required this.username,
      required this.name,
      required this.isAdmin,
      required this.isPremium,
      required this.isStoreManager,
      required this.profileUrl,
      required this.avatarUrl,
      required this.avatarThumbnailUrl,
      required this.avatarSmallThumnailUrl,
      required this.coverUrl,
      required this.website,
      required this.bio,
      required this.followings,
      required this.followers,
      required this.likes,
      required this.objects,
      required this.totalPrints,
      required this.totalCollections,
      required this.socialNetworks,
      required this.printers});

  String? username;
  String? name;
  bool? isAdmin;
  bool? isPremium;
  bool? isStoreManager;
  String? profileUrl;
  String? avatarUrl;
  String? avatarThumbnailUrl;
  String? avatarSmallThumnailUrl;
  String? coverUrl;
  String? website;
  String? bio;
  int? followings;
  int? followers;
  int? likes;
  int? objects;
  int? totalPrints;
  int? totalCollections;
  List<Widget> socialNetworks;
  List<Widget> printers;

  factory MMFUser.fromJson(Map<String, dynamic> json) {
    return MMFUser(
      username: json['username'],
      name: json['name'],
      isAdmin: json['is_admin'],
      isPremium: json['is_premium'],
      isStoreManager: json['is_store_manager'],
      profileUrl: json['profile_url'],
      avatarUrl: json['avatar_url'],
      avatarThumbnailUrl: json['avatar_thumbnail_url'],
      avatarSmallThumnailUrl: json['avatar_small_thumnail_url'],
      coverUrl: json['cover_url'],
      website: json['website'],
      bio: json['bio'],
      followings: json['followings'],
      followers: json['followers'],
      likes: json['likes'],
      objects: json['objects'],
      totalPrints: json['total_prints'],
      totalCollections: json['total_collections'],
      socialNetworks: json['social_networks'],
      printers: json['printers'],
    );
  }
}
