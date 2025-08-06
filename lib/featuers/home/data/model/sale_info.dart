import 'package:bookly_app/featuers/home/data/model/offer.dart';
import 'package:bookly_app/featuers/home/data/model/price_info.dart';

class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;
  final PriceInfo? listPrice;
  final PriceInfo? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'] as String,
      saleability: json['saleability'] as String,
      isEbook: json['isEbook'] as bool,
      listPrice: json['listPrice'] != null
          ? PriceInfo.fromJson(json['listPrice'] as Map<String, dynamic>)
          : null,
      retailPrice: json['retailPrice'] != null
          ? PriceInfo.fromJson(json['retailPrice'] as Map<String, dynamic>)
          : null,
      buyLink: json['buyLink'] as String?,
      offers: (json['offers'] as List?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
