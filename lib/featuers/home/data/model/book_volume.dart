import 'package:bookly_app/featuers/home/data/model/access_info.dart';
import 'package:bookly_app/featuers/home/data/model/sale_info.dart';
import 'package:bookly_app/featuers/home/data/model/volume_info.dart';

class BookVolume {
  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;

  BookVolume({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

  factory BookVolume.fromJson(Map<String, dynamic> json) {
    return BookVolume(
      kind: json['kind'] as String,
      id: json['id'] as String,
      etag: json['etag'] as String,
      selfLink: json['selfLink'] as String,
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo: AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
    );
  }
}