part of model;

class MMFObject {
  MMFObject(
      {required this.id,
      required this.url,
      required this.name,
      required this.visibility,
      required this.visibilityName,
      required this.listed,
      required this.status,
      required this.statusName,
      required this.description,
      required this.descriptionHtml,
      required this.featured,
      required this.support,
      required this.images,
      required this.views,
      required this.likes,
      required this.publishedAt,
      required this.tags,
      required this.licenses,
      required this.filters,
      required this.fileMode,
      required this.categories,
      required this.files,
      required this.prints,
      required this.designer,
      required this.license,
      required this.price,
      required this.purchaseUrl});

  int? id;
  String? url;
  String? name;
  int? visibility;
  String? visibilityName;
  bool? listed;
  int? status;
  String? statusName;
  String? description;
  String? descriptionHtml;
  bool? featured;
  bool? support;
  List<Widget>? images;
  int? views;
  int? likes;
  String? publishedAt;
  List<String>? tags;
  List<Widget>? licenses;
  List<Widget>? filters;
  int? fileMode;
  List<Widget>? categories;
  List<Widget>? files;
  List<Widget>? prints;
  List<Widget>? designer;
  String? license;
  List<Widget>? price;
  String? purchaseUrl;

  factory MMFObject.fromJson(Map<String, dynamic> json) {
    return MMFObject(
      id: json['id'],
      url: json['url'],
      name: json['name'],
      visibility: json['visibility'],
      visibilityName: json['visibility_name'],
      listed: json['listed'],
      status: json['status'],
      statusName: json['status_name'],
      description: json['description'],
      descriptionHtml: json['description_html'],
      featured: json['featured'],
      support: json['support'],
      images: json['images'],
      views: json['views'],
      likes: json['likes'],
      publishedAt: json['published_at'],
      tags: json['tags'],
      licenses: json['licenses'],
      filters: json['filters'],
      fileMode: json['file_mode'],
      categories: json['categories'],
      files: json['files'],
      prints: json['prints'],
      designer: json['designer'],
      license: json['license'],
      price: json['price'],
      purchaseUrl: json['purchase_url'],
    );
  }
}
