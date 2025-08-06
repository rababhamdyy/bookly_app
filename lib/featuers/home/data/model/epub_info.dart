class EpubInfo {
  final bool isAvailable;

  EpubInfo({
    required this.isAvailable,
  });

  factory EpubInfo.fromJson(Map<String, dynamic> json) {
    return EpubInfo(
      isAvailable: json['isAvailable'] as bool,
    );
  }
}