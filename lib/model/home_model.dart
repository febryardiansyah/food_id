// home model
class HomeModel {
  HomeModel({
    this.id,
    this.name,
    this.pageUrl,
    this.originalPageUrl,
    this.media,
    this.isActive,
    this.orders,
    this.bannerVariantId,
    this.variant,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? pageUrl;
  String? originalPageUrl;
  String? media;
  bool? isActive;
  int? orders;
  int? bannerVariantId;
  VariantModel? variant;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    id: json["id"],
    name: json["name"],
    pageUrl: json["page_url"],
    originalPageUrl: json["original_page_url"],
    media: json["media"],
    isActive: json["is_active"],
    orders: json["orders"],
    bannerVariantId: json["banner_variant_id"],
    variant: VariantModel.fromJson(json["variant"]),
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );
}

// variant model
class VariantModel {
  VariantModel({
    this.id,
    this.name,
    this.slug,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory VariantModel.fromJson(Map<String, dynamic> json) => VariantModel(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );
}
