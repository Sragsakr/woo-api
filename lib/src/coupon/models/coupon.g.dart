// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCoupon _$WooCouponFromJson(Map<String, dynamic> json) => WooCoupon(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      status: WooCouponStatus.fromString(json['status'] as String),
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateCreatedGmt: json['date_created_gmt'] == null
          ? null
          : DateTime.parse(json['date_created_gmt'] as String),
      dateModified: json['date_modified'] == null
          ? null
          : DateTime.parse(json['date_modified'] as String),
      dateModifiedGmt: json['date_modified_gmt'] == null
          ? null
          : DateTime.parse(json['date_modified_gmt'] as String),
      discountType:
          WooCouponDiscountType.fromString(json['discount_type'] as String),
      description: json['description'] as String?,
      dateExpires: json['date_expires'] == null
          ? null
          : DateTime.parse(json['date_expires'] as String),
      dateExpiresGmt: json['date_expires_gmt'] == null
          ? null
          : DateTime.parse(json['date_expires_gmt'] as String),
      usageCount: (json['usage_count'] as num?)?.toInt(),
      individualUse: json['individual_use'] as bool?,
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      excludedProductIds: (json['excluded_product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      usageLimit: (json['usage_limit'] as num?)?.toInt(),
      usageLimitPerUser: (json['usage_limit_per_user'] as num?)?.toInt(),
      limitUsageToXItems: (json['limit_usage_to_x_items'] as num?)?.toInt(),
      freeShipping: json['free_shipping'] as bool?,
      productCategories: (json['product_categories'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      excludedProductCategories:
          (json['excluded_product_categories'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      excludeSaleItems: json['exclude_sale_items'] as bool?,
      minimumAmount: json['minimum_amount'] as String?,
      maximumAmount: json['maximum_amount'] as String?,
      emailRestrictions: (json['email_restrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usedBy:
          (json['used_by'] as List<dynamic>?)?.map((e) => e as String).toList(),
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => WooMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['_links'] == null
          ? null
          : WooCouponLinks.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooCouponToJson(WooCoupon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  val['status'] = WooCouponStatus.toValue(instance.status);
  val['date_created'] = instance.dateCreated?.toIso8601String();
  val['date_created_gmt'] = instance.dateCreatedGmt?.toIso8601String();
  val['date_modified'] = instance.dateModified?.toIso8601String();
  val['date_modified_gmt'] = instance.dateModifiedGmt?.toIso8601String();
  val['discount_type'] = WooCouponDiscountType.toValue(instance.discountType);
  writeNotNull('description', instance.description);
  val['date_expires'] = instance.dateExpires?.toIso8601String();
  val['date_expires_gmt'] = instance.dateExpiresGmt?.toIso8601String();
  val['usage_count'] = instance.usageCount;
  val['individual_use'] = instance.individualUse;
  val['product_ids'] = instance.productIds;
  val['excluded_product_ids'] = instance.excludedProductIds;
  val['usage_limit'] = instance.usageLimit;
  val['usage_limit_per_user'] = instance.usageLimitPerUser;
  val['limit_usage_to_x_items'] = instance.limitUsageToXItems;
  val['free_shipping'] = instance.freeShipping;
  val['product_categories'] = instance.productCategories;
  val['excluded_product_categories'] = instance.excludedProductCategories;
  val['exclude_sale_items'] = instance.excludeSaleItems;
  val['minimum_amount'] = instance.minimumAmount;
  val['maximum_amount'] = instance.maximumAmount;
  val['email_restrictions'] = instance.emailRestrictions;
  val['used_by'] = instance.usedBy;
  val['meta_data'] = instance.metaData;
  val['_links'] = instance.links;
  return val;
}
