class PdfInfo {
  final bool isAvailable;

  PdfInfo({
    required this.isAvailable,
  });

  factory PdfInfo.fromJson(Map<String, dynamic> json) {
    return PdfInfo(
      isAvailable: json['isAvailable'] as bool,
    );
  }
}