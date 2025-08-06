class OfferPriceInfo {
  final int amountInMicros;
  final String currencyCode;

  OfferPriceInfo({
    required this.amountInMicros,
    required this.currencyCode,
  });

  factory OfferPriceInfo.fromJson(Map<String, dynamic> json) {
    return OfferPriceInfo(
      amountInMicros: json['amountInMicros'] as int,
      currencyCode: json['currencyCode'] as String,
    );
  }
}