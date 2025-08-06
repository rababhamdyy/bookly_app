import 'package:bookly_app/featuers/home/data/model/offer_price_info.dart';

class Offer {
  final int finskyOfferType;
  final OfferPriceInfo listPrice;
  final OfferPriceInfo retailPrice;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      finskyOfferType: json['finskyOfferType'] as int,
      listPrice: OfferPriceInfo.fromJson(json['listPrice'] as Map<String, dynamic>),
      retailPrice: OfferPriceInfo.fromJson(json['retailPrice'] as Map<String, dynamic>),
    );
  }
}