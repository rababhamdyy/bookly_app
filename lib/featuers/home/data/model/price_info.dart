class PriceInfo {
  final double amount;
  final String currencyCode;

  PriceInfo({
    required this.amount,
    required this.currencyCode,
  });

  factory PriceInfo.fromJson(Map<String, dynamic> json) {
    return PriceInfo(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
    );
  }
}
